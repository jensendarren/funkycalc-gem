require 'spec_helper'
include Funkycalc

describe Funkycalc do
  describe 'numbers' do
    it 'should have number methods for 0 to 9' do
      expect(zero).to eq(0)
      expect(one).to eq(1)
      expect(two).to eq(2)
      expect(three).to eq(3)
      expect(four).to eq(4)
      expect(five).to eq(5)
      expect(six).to eq(6)
      expect(seven).to eq(7)
      expect(eight).to eq(8)
      expect(nine).to eq(9)
    end
  end

  describe 'operators' do
    it 'should have a plus operator method' do
      expect(plus(zero)[0]).to eq(:+)
    end

    it 'should have a minus operator method' do
      expect(minus(zero)[0]).to eq(:-)
    end

    it 'should have a times operator method' do
      expect(times(zero)[0]).to eq(:*)
    end

    it 'should have a divided_by operator method' do
      expect(divided_by(zero)[0]).to eq(:/)
    end
  end

  describe 'operations' do
    describe 'addition' do
      it 'should add two numbers together' do
        expect(three(plus(four))).to eq(7)
        expect(seven(plus(two))).to eq(9)
        expect(zero(plus(one))).to eq(1)
        expect(one(plus(one))).to eq(2)
        expect(one(plus(nine))).to eq(10)
      end
    end

    describe 'subtraction' do
      it 'should subtract two numbers' do
        expect(eight(minus(four))).to eq(4)
        expect(two(minus(two))).to eq(0)
        expect(one(minus(two))).to eq(-1)
        expect(six(minus(zero))).to eq(6)
        expect(six(minus(three))).to eq(3)
      end
    end

    describe 'multiplication' do
      it 'should multiply two numbers' do
        expect(eight(times(two))).to eq(16)
        expect(three(times(one))).to eq(3)
        expect(zero(times(four))).to eq(0)
        expect(four(times(four))).to eq(16)
        expect(six(times(five))).to eq(30)
      end
    end

    describe 'division' do
      it 'should divide two numbers' do
        #note results will automatically round
        expect(four(divided_by(two))).to eq(2)
        expect(one(divided_by(one))).to eq(1)
        expect(nine(divided_by(three))).to eq(3)
        expect(eight(divided_by(two))).to eq(4)
        expect(nine(divided_by(eight))).to eq(1)
        expect(eight(divided_by(three))).to eq(2)
      end

      it 'should throw a ZeroDivisionError when dividing by zero' do
        expect {one(divided_by(zero))}.to raise_error ZeroDivisionError
      end
    end
  end
end