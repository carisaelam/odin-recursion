# frozen_string_literal: true

# iterative approach to fibonacci sequence

def fibs(num)
  array = [0, 1]

  if num.zero?
    return nil
  elsif num == 1
    return 0
  elsif num == 2
    return array

  else
    (num - 2).times do
      sum = array[-1] + array[-2]
      array.push(sum)
    end
  end

  array
end

# recursive method

def fibs_rec(num)
  if num.zero?
    []
  elsif num == 1
    [0]
  elsif num == 2
    [0, 1]

  else
    array = fibs_rec(num - 1)
    fib_num = array[-1] + array[-2]
    array.push(fib_num)
  end
end

p fibs_rec(9)
