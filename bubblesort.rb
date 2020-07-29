# frozen_string_literal: true

def bubble_sort(list)
  n = list.size
  while n > 1
    new_n = 0
    (1..n - 1).each do |i|
      if list[i - 1] > list[i]
        list[i - 1], list[i] = list[i], list[i - 1]
        new_n = i
      end
    end
    n = new_n
  end
  list
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([4, 3, 78, 2, 0, 2, 0, 199, 1, 3, 298, 45, 234, 5, 67, 3453, -10, -2, 55, 4.5, -0.1])
