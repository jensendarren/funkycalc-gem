# Task 1: Let’s get functional, functional.

We want to write calculations using functions and get the results.

**Here are some examples:**

```ruby
six(times(five)) # must return 30
one(plus(nine)) # must return 10
six(minus(three)) # must return 3
eight(divided_by(two)) # must return 4
```

## Requirements

* There must be a function for each number from 0 (“zero”) to 9 (“nine”)
* There must be a function for each of the following mathematical operations: `plus`, `minus`, `times`, `divided_by`
* Each calculation consist of exactly one operation and two numbers
* The most outer function represents the left operand, the most inner function represents the right operand

## Guidelines

* Use Git and commit as often as you think is necessary to properly tell your story
* Write tests using RSpec proving that your solution works (TDD strongly encouraged)
* Use whatever tools you’d like (gems, patterns, etc)
* Engineer your solution as if there’s a high chance it will be re-used
* Keep lines wrapped at 120 characters
* Enjoy this challenge!

## What we're looking for

* Coding style (tidyness &amp; legibility)
* Abstractions
* Testing practices
* Commit journey

## How to get started & submit

1. Clone the repo
2. Create a new branch to work from
3. Do your thing
4. When you're done, push your branch and create a PR for the team to review

# Task 1: Solution README

Enables writing simple calculations using functions to get the results. For example:

```ruby
six(times(five)) # 30
one(plus(nine)) # 10
six(minus(three)) # 3
eight(divided_by(two)) # 4
```

* Tested against Ruby 2.6.x

## Tests

To run all tests, execute:

```
bundle exec rspec
```

To run tests when files change during development process, use guard:

```
bundle exec guard
```

## Installation

Since this Gem is not published online its necessary to build it locally first and then install and use it. So clone this repo and then run the following commands.

```
gem build funkycalc.gemspec
```

You should see a new gem file created (`funkycalc-0.0.1.gem`). Install this new gem to your local gem files like so:

```
gem install funkycalc-0.0.1.gem
```

Add `funkycalc` gem to your new project Gemfile (for example a new Rails project that you have created in a separate directory)

```
gem 'funkycalc'
```

Run bundle to update the Gemfile.lock in the new project

```
bundle install
```

## Usage

Assuming you have a new project (for example Rails) and you have already built the Funkycalc Gem as shown above, then you can use in your project as follows:

```
require 'funkycalc'
include Funkycalc

puts one(plus(two)) #=> 3
puts one(plus(eight)) #=> 9
```