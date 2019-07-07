def my_sort(list, new_array = nil)

  return new_array if list.size <= 0
  if new_array == nil
    new_array = []
  end
  min = list.min
  new_array << min
  list.delete(min)

  my_sort(list, new_array)

end

puts my_sort([3, 1, 2, 20, 11, 14, 3, 6, 8, 5])