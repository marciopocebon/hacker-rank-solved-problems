#!/bin/ruby

# challenge: https://www.hackerrank.com/challenges/staircase

# height of staircase
n = gets.strip.to_i

(n+1).times.each do |i|
  symbols = "#"*i
  spaces = " "*(n-i)
  output = spaces+symbols

  # empty lines are not printed
  puts output unless output == spaces
end
