def fizz_buzz(number)
  raise ArgumentError, 'Argument should be a positive number' unless number.positive?

  arr = []
  (1..number).each do |x|
    if (x % 3).zero? && (x % 5).zero?
      arr << 'FizzBuzz'
    elsif (x % 5).zero?
      arr << 'Buzz'
    elsif (x % 3).zero?
      arr << 'Fizz'
    else
      arr << x
    end
  end
  arr
end
