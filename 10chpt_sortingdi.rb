# sorted_array is []

def recursive_sort unsorted_array, sorted_array
  return "no items to sort" if unsorted_array.size == 0
  
  base = unsorted_array[0]
  
  until unsorted_array.size == 0
  
    unsorted_array.each do |word|
      base = word if word.downcase.size <= base.downcase.size   
    end
    sorted_array << base
    unsorted_array.delete(base)
    recursive_sort unsorted_array, sorted_array
  end
  sorted_array
end

puts recursive_sort ["Apple", "a", "Bean", "bat", "cat", "at"], []