=begin
class RomanNumerals
  def old_roman_numeral(number)
    number.to_i
    
    rn_string = "M" * (number / 1000)
      number %= 1000
      
    rn_string += "D" * (number / 500)
      number %= 500
      
    rn_string += "C" * (number / 100)  
      number %= 100
      
    rn_string += "L" * (number / 50)  
        number %= 50
    
    rn_string += "X" * (number / 10)  
          number %= 10
          
    rn_string += "V" * (number / 5)  
    
    rn_string += "I" * (number % 5)  
  
    puts rn_string 
  end
  
  def modern_roman_numeral(number)
  end
end

test = RomanNumerals.new
puts test.old_roman_numeral(1677)
=end

class Roman

  def old_roman(number)

    rn_look_up = {1000 => 'M', 
      						500 => 	'D', 
      						100 => 	'C',
      						50 => 	'L',
      						10 =>		'X',
      						5	=>		'V',
      						1 =>		'I'}.sort.reverse
    
    string_numeral = ""
    
    rn_look_up.each do |key, value|
      repeats = number / key      
      repeats.times { string_numeral << value }
			number = number % key 
    end
  p string_numeral
  end
end

roman = Roman.new
roman.old_roman(2554)
roman.old_roman(8510)