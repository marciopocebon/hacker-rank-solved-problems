#!/bin/ruby

# challenge: https://www.hackerrank.com/challenges/divisible-sum-pairs

# contraints
# 2 <= n <= 100
# 1 <= k <= 100
# 1 <= ai <= 100

#!/bin/ruby

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

matches = Hash.new

n.times do |i|

  n.times do |j|
    # skips if the index being accessed is the same from the outer loop
    next if i == j

    # match case
    if (a[i]+a[j]) % k == 0 
      # generates a identifier for this 
      # result such that (0,2) == (2,0)
      key = [i, j].sort
      
      # it does not matter the value, just the keys
      matches[key] = true
    end
  end

end

# outputs only the number of keys in the hash
# note: {}.length is the same as {}.keys.length
puts matches.length
