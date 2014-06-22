gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './fibonacci'
require 'prime'

class FibonacciTest < Minitest::Test
  def test_it_exists
    fib = Fibonacci.new
  end

  def test_an_array_with_the_first_two_in_fibonacci
    fib = Fibonacci.new
    assert_equal [0, 1], fib.first_two
  end

  def test_that_fib_numbers_get_added_to_array_correctly
    fib = Fibonacci.new
    assert_equal [0, 1, 1], fib.plus_one
  end

  def test_that_first_100_get_added_to_array
    fib = Fibonacci.new
    assert_equal 55, fib.first_100[10]
    assert_equal 102334155, fib.first_100[40]
  end

  def test_that_number_from_fib_array_is_prime?
    fib = Fibonacci.new
    assert fib.is_prime?(2)
    assert fib.is_prime?(3)
    assert fib.is_prime?(5)
  end



end
