# frozen_string_literal: true

array = [3, 2, 1, 13, 8, 5, 0, 1]

def split_array(array)
  midpoint = (array.length / 2.0).ceil
  array.each_slice(midpoint).to_a
end

def merge_sort(array)
  # split in half
  p "original array: #{array}"
  left_half = split_array(array)[0]
  right_half = split_array(array)[1]

  # sort left side
  sorted_left = left_half.sort
  p "sorted left: #{sorted_left}"

  # sort ride side
  sorted_right = right_half.sort
  p "sorted right: #{sorted_right}"

  # merge
  final_array = []

  p 'beginning loop '

  # compare index zero in each array...pop into new array
  loop do
    if sorted_left[0].nil?
      p 'no sorted_left[0]'
      final_array.push(sorted_right.shift)

    elsif sorted_right[0].nil?
      p 'no sorted_right[0]'
      final_array.push(sorted_left.shift)

    elsif sorted_left[0] < sorted_right[0]
      final_array.push(sorted_left.shift)

    else
      final_array.push(sorted_right.shift)

    end
    p "final array: #{final_array}"
    break if final_array.size == array.size
  end
  p final_array
end

merge_sort(array)
