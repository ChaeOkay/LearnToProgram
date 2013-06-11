def roman_numeral_valid?(number)  
  number_array = number.split('')
  number_array.each do |character|
    if ["I", "V", "X", "C", "D", "M"].include?(character) == false
      p "#{character} is not valid so #{number} is not valid"
    end
  end   
end


roman_numeral_valid?('XXXVI')
roman_numeral_valid?('AXI')

#check for letter characters
#check for order of letters <--- in progress