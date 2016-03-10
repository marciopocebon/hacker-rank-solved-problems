#!/bin/ruby

# challenge: https://www.hackerrank.com/challenges/diagonal-difference

# matrix size: n x n
n = gets.strip.to_i
matrix = Array.new(n)
for matrix_row in (0..n-1)
  matrix_row_item = gets.strip
  matrix[matrix_row] = matrix_row_item.split(' ').map(&:to_i)
end

left_total = 0
right_total = 0

left_index = 0
right_index = -1

# computation
matrix.each do |row|
  left_total += row[left_index]
  right_total += row[right_index]

  left_index+=1
  right_index-=1
end

# output
puts (left_total-right_total).abs
