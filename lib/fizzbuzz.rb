require 'fizzbuzz/version'
require 'cli'

# FizzBuzz
#
# FizzBuzzの計算を行う
module Fizzbuzz
  module_function

  def fizzbuzz(limit)
    limit_number = Integer(limit)
    (0..limit_number).map do |num|
      if (num % 15).zero? then 'FizzBuzz'
      elsif (num % 5).zero? then 'Buzz'
      elsif (num % 3).zero? then 'Fizz'
      else num.to_s
      end
    end
  end
end
