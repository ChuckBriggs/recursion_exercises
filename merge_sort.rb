# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

def merge_sort(arr)
  if arr.length < 2
    sorted = arr
  else
    sorted = []
    left = merge_sort(arr[0..arr.length / 2 - 1])
    right = merge_sort(arr[arr.length / 2..-1])
    while left[0] && right[0]
      if left[0] > right[0]
        sorted << right.shift
      else
        sorted << left.shift
      end
    end
    sorted += left + right
  end
  sorted
end

arr = [1, 6, 4, 3, 7, 4, 0, 8]
p merge_sort(arr)
