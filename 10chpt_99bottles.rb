require_relative '10chpt_engnumb'

x = 99

while x > 0
    puts "#{english_number(x)} bottles of beer on the wall, #{english_number(x)} bottles of beer, if one of those bottles should happen to fall, #{english_number(x-1)} bottles of beer on the wall."
    break if x == 0
    x -= 1
end