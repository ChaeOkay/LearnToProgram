def sort some_array
  recursive_sort some_array
end

def recursive_sort unsorted_array, sorted_array
end

def nonrecursive_sort unsorted_array, sorted_array
  until unsorted_array.empty?
    sorted_array << unsorted_array.shift
    sorted_array.map {|worda, wordb| worda <=> wordb}  
    #compare items in array
    #"king of the hill" - a if a > b
     
  end
end

puts arry1 = ["a", "z", "e"]
puts arry2 = ["b", "c", "d", "f"]
nonrecursive_sort arry1, arry2
