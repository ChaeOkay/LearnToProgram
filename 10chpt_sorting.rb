# sorted_array is []

=begin def recursive_sort unsorted_array, sorted_array
  max_word = 0
  unsorted_array.each do |word| 
    return if word == "nil"
    max_word = word > max_word ? word : max_word
    sorted_array << max_word
    end
  sorted_array
end

unsorted_array = [1, 5, 8, 3, 5]
puts recursive_sort unsorted_array, []

********
solution from blog
******** 'sort(list)' is the final call

def sort some_array
   recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
   if unsorted_array.size == 0
     return sorted_array
   else
     smallest = unsorted_array[0]
     unsorted_array.each do |x|
       if x < smallest
         smallest = x
       end
    end

  new_unsorted_array = []
  unsorted_array.each do |x|
    if x == smallest
      sorted_array.push(x)
    else
      new_unsorted_array.push(x)
    end
  end
  
  recursive_sort new_unsorted_array, sorted_array 
end
=end

def recursive_sort unsorted_array, sorted_array
  return "no items to sort" if unsorted_array.size == 0
  
  base = unsorted_array[0]
  
  until unsorted_array.size == 0
  
    unsorted_array.each do |word|
      base = word if word.size <= base.size   
    end
    sorted_array << base
    unsorted_array.delete(base)
    recursive_sort unsorted_array, sorted_array
  end
  sorted_array
end

puts recursive_sort ["apple", "a", "cat", "at"], []