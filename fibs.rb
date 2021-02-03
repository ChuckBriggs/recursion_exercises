# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

def fibs(n)
  arr = []
  i = 0
  while i < n
    if i < 1
      arr << 0
    elsif i == 1
      arr << 1
    else
      arr << arr[i-1] + arr[i-2]
    end
    i += 1
  end
  arr
end

def fibs_rec(n, arr = [])
  if n <= 1
    arr << 0
  elsif n == 2
    arr << 1
  else
    arr << fibs_rec(n - 1) + fibs_rec(n-2)
  end
  arr
end

i = 0
while i < 20
  puts "#{i}:\t#{fibs(i)}"
  i += 1
end

