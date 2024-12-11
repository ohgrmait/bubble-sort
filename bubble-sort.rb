def bubble_sort(array)
  length = array.length

  loop do
    new_length = 0
    
    array.each_with_index do |num, idx|
      next if idx < 1 || idx > length - 1
      if array[idx - 1] > array[idx]
        array[idx - 1], array[idx] = array[idx], array[idx - 1]
        new_length = idx
      end
    end
    
    length = new_length
    
    break if length <= 1
  end

  array
end

p bubble_sort([4,3,78,2,0,2])