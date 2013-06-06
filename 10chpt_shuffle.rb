# sorted_array is []

=begin
take an array and return a totally shuffled version
=end

def recursive_shuffle array, shuffled_array
  return "no items to shuffle" if array.size == 0
  
  until array.size == 0
    rand_item = array[rand(array.size)]
    shuffled_array << rand_item
    array.delete(rand_item)    
    recursive_shuffle array, shuffled_array
  end
  shuffled_array
end

puts recursive_shuffle ["apple", "a", "cat", "at"], []