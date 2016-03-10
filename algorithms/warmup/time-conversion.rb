#!/bin/ruby

# challenge: https://www.hackerrank.com/challenges/time-conversion

# input
time = gets.strip

# splits the input
split_time = time.split(":")

hour = split_time[0].to_i

if time.include?("PM")
  hour = (hour+12) % 24 unless hour == 12
elsif time.include?("AM")
  if hour == 12
    hour = "00"
  end
end

# adds zeroes, such that 2 became 02
hour = hour.to_s.rjust(2, '0')

# updates the hour
split_time[0] = hour

# joints the time again
formatted_time = split_time.join(":")

# removes PM/AM from time
output = formatted_time.gsub(/AM|PM/, "")

# outputs the result
puts output
