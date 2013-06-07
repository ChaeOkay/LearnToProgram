=begin
FIRST TRY
class RomanNumerals
  def old_roman_numeral(number)
    number.to_i
    
    m_times = "M" * (number / 1000)
      number = number % 1000
    d_times = "D" * (number / 500)
      number = number % 500
    c_times = "C" * (number / 100)
      number = number % 100
    l_times = "L" * (number / 50)
      number = number % 50
    x_times = "X" * (number / 10)
      number = number % 10
    v_times = "V" * (number / 5)
    i_times = "I" * (number % 5)
     
    m_times + d_times + c_times + l_times + x_times + v_times + i_times 
  end
  
  def modern_roman_numeral(number)
    number.to_i
      
    m_times = "M" * (number / 1000)
      number = number % 1000
    d_times = "D" * (number / 500)
      number = number % 500
    c_times = "C" * (number / 100)
      number = number % 100
    l_times = "L" * (number / 50)
      number = number % 50
    x_times = "X" * (number / 10)
    
    #modified to correct the number 4
    if (number % 10) == 4
      v_times = "IV"
      i_times = ""
    else number = number % 10
      v_times = "V" * (number / 5)
      i_times = "I" * (number % 5)
    end

    m_times + d_times + c_times + l_times + x_times + v_times + i_times 
  end
end
=end
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