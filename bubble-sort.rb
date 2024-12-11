def bubble_sort(array)
  length = array.length

  loop do
    swapped = false

    array.each_with_index do |num, idx|
      next if idx < 1 || idx > length

      if array[idx - 1] > array[idx]
        array[idx - 1], array[idx] = array[idx], array[idx - 1]
        swapped = true
      end
    end

    length -= 1

    break if not swapped
  end

  array
end