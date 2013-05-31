class GrandmaSpeaks
  def response_lowercase
    'HUH?! SPEAK UP, SONNY!'
  end
  
  def response_uppercase
    'NO, NOT SINCE ' + rand(1930..1950).to_s
  end
end

class DeafGrandma < GrandmaSpeaks
  def talk
    bye = 0
    puts 'HELLO THERE'
    
    loop do
      input = gets.chomp
      bye += 1 if input.include? 'BYE'
      
      unless input == input.upcase 
        puts response_lowercase
      else
        puts response_uppercase
      end
      
    break if bye == 3
    end
  end
end

granny = DeafGrandma.new
granny.talk