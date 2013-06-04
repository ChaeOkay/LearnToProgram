def recursive_sort unsorted_array, sorted_array
  # sorted_array is []
  return if unsorted_array.empty?
  unsorted_array.each do |word| 
    max_word = word if word > max_word
    sorted_array << max_word
  end
end
