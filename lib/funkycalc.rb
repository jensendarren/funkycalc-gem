module Funkycalc
  # Perform basic math functions using words
  #
  # Some examples:
  #   >> six(times(five)) #=> 30
  #   >> one(plus(nine)) # =>10
  #   >> six(minus(three)) #=> 3
  #   >> eight(divided_by(two)) #=> 4
  #

  numbers = {zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9}
  operations = {plus: :+, minus: :-, times: :*, divided_by: :/}

  numbers.each do |method_name, number|
    define_method method_name do |operation_fn=nil|
      return number if operation_fn.nil?
      operation, right_operand = operation_fn
      number.public_send(operation, right_operand)
    end
  end

  operations.each do |method_name, operation|
    define_method method_name do |number_fn|
      return operation, number_fn
    end
  end
end