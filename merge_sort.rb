# frozen_string_literal: true

array = [3, 2, 1, 13, 8, 5, 0, 1]

# recursively

def merge_sort(arr)
  if arr.length <= 1
    arr
  else
    mid = (arr.length / 2).floor
    left = merge_sort(arr[0..mid - 1])
    right = merge_sort(arr[mid..arr.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

p merge_sort(array)

# procedurally

# def split_array(array)
#   midpoint = (array.length / 2.0).ceil
#   array.each_slice(midpoint).to_a
# end

# def merge_sort(array)
#   # split in half
#   p "original array: #{array}"
#   left_half = split_array(array)[0]
#   right_half = split_array(array)[1]

#   # sort left side
#   sorted_left = left_half.sort
#   p "sorted left: #{sorted_left}"

#   # sort ride side
#   sorted_right = right_half.sort
#   p "sorted right: #{sorted_right}"

#   # merge
#   final_array = []

#   p 'beginning loop '

#   # compare index zero in each array...pop into new array
#   loop do
#     if sorted_left[0].nil?
#       p 'no sorted_left[0]'
#       final_array.push(sorted_right.shift)

#     elsif sorted_right[0].nil?
#       p 'no sorted_right[0]'
#       final_array.push(sorted_left.shift)

#     elsif sorted_left[0] < sorted_right[0]
#       final_array.push(sorted_left.shift)

#     else
#       final_array.push(sorted_right.shift)

#     end
#     p "final array: #{final_array}"
#     break if final_array.size == array.size
#   end
#   p final_array
# end
