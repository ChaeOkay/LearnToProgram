class RomanNumerals
  attr_accessor :m_times, :d_times, :c_times, :l_times, :x_times, :v_times, :i_times
  
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

test = RomanNumerals.new
puts test.old_roman_numeral(1677)
puts test.modern_roman_numeral(54)
puts test.modern_roman_numeral(58)
puts test.modern_roman_numeral(53)