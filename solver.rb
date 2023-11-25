class Solver
  def factorial(number)
    raise 'Negative integers are not allowed' if number.negative?

    (1..number).inject(1, :*)
  end
end
