# sorted_array is []

def recursive_sort unsorted_array, sorted_array
  max_word = 0
  unsorted_array.each do |word| 
    return if word == "nil"
    max_word = word > max_word ? word : max_word
    sorted_array << max_word
    end
  sorted_array
end

unsorted_array = [1, 5, 8, 3, 5]
recursive_sort unsorted_array, []

# wondering if I'm allowed to use .sort <=>
