require 'minitest/autorun'
require_relative 'solver'

class TestSolver < Minitest::Test
  def setup
    @solver = Solver.new
  end

  def test_factorial
    assert_equal 120, @solver.factorial(5)
    assert_equal 1, @solver.factorial(0)
  end

  def test_factorial_negative
    assert_raises(RuntimeError) { @solver.factorial(-1) }
  end

  def test_reverse
    assert_equal 'olleh', @solver.reverse('hello')
  end

  def test_fizzbuzz
    assert_equal 'fizz', @solver.fizzbuzz(3)
    assert_equal 'buzz', @solver.fizzbuzz(5)
    assert_equal 'fizzbuzz', @solver.fizzbuzz(15)
    assert_equal '7', @solver.fizzbuzz(7)
  end
end
