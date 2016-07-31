#!/bin/ruby

# challenge: https://www.hackerrank.com/challenges/kangaroo

x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i

# we store the initial distance, so we can check later
# if the distance between the two are increasing or decreasing
# if it does not start decreasing, it means that the two will never meet
initial_dist = (x1 - x2).abs

# contraint helper
max_input = 10000

def compute(distance, x1, v1, x2, v2, first_run)
  if x1 == x2
    return "YES"
  end

  # if the distance between the two isnt decreasing, it never will
  if (x1-x2).abs >= distance and  !first_run
    return "NO"
  end

  return compute(distance, x1+v1, v1, x2+v2, v2, false)
end

# I've created a helper argument to help running the 
# distance computation only after the first run
result = compute(initial_dist, x1, v1, x2, v2, true)

puts result
