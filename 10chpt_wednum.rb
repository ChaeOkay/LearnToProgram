def wedding_number(number)
  if number < 0 
      return 'Please enter a number that isn\'t negative.' 
  end 
  
  return 'zero' if number == 0 

  num_string = '' 
  ones_place = ['one','two','three',
                'four','five','six',
                'seven','eight','nine']
                
  tens_place = ['ten','twenty','thirty',
                'forty','fifty','sixty',
                'seventy','eighty','ninety']
                
  teenagers = ['eleven','twelve','thirteen',
              'fourteen','fifteen','sixteen',
              'seventeen','eighteen','nineteen']
      
  left = number
     
  write = left/1_000
  left = left - write*1_000
  
  if write > 0
    if num_string == ''
      thousand = wedding_number(write)
      num_string = num_string + thousand + ' thousand'
      
    else
      thousand = wedding_number(write)
      num_string = num_string + ' and' + thousand + ' thousand'
    end
  end
  
  write = left/100
  left = left - write*100
    
  if write > 0
    if num_string == ''
      hundreds = wedding_number(write)
      num_string = num_string + hundreds + ' hundred'
      
    else
      hundreds = wedding_number(write)
      num_string = num_string + ' and ' + hundreds + ' hundred'
    end
  end
  
  write = left/10
  left = left - write*10
  
  if write > 0
    if ((write == 1) and (left > 0))
      if num_string == '' 
        num_string = num_string + teenagers[left-1] 
        left = 0
      else
        num_string = num_string + ' and ' + teenagers[left-1] 
        left = 0
      end
      
    else
      if num_string == ''
        num_string = num_string + tens_place[write-1]
      else
        num_string = num_string + ' and ' + tens_place[write-1]
      end
    end
    
    if left > 0
      num_string = num_string + ' and '
    end
  end
  
  write = left
  left = 0
  
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  
  num_string
end

puts wedding_number(  0)
puts wedding_number(  9)
puts wedding_number( 10)
puts wedding_number( 11)
puts wedding_number( 99)
puts wedding_number(324)
puts wedding_number(1_532)