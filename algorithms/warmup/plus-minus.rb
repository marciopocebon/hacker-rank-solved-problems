#!/bin/ruby

# challenge: https://www.hackerrank.com/challenges/plus-minus

=begin
  sample input:
  6
  -4 3 -9 0 41

  sample output:
  0.500000
  0.333333
  0.166667
=end

# size of numbers' array
n = gets.strip.to_i
numbers = gets.strip
numbers = numbers.split(' ').map(&:to_i)

# counts
positive_count = 0
negative_count = 0
zeroes_count = 0

# computation for counts
numbers.each do |number|
  if number > 0
    positive_count += 1
  elsif number < 0
    negative_count += 1
  else
    zeroes_count += 1
  end
end

# converter the integer n to float, before computing
n_f = n.to_f

# final computation and output
puts (positive_count / n_f).round(6)
puts (negative_count / n_f).round(6)
puts (zeroes_count / n_f).round(6)
