def bubble_sort(array)
  loop do
    swapped = false

    array.each_with_index do |num, idx|
      next if idx == 0 || idx == array.length

      if array[idx - 1] > array[idx]
        array[idx - 1], array[idx] = array[idx], array[idx - 1]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end