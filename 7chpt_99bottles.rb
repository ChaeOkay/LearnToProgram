x = 99

while x > 0
    puts "#{x} bottles of beer on the wall, #{x} bottles of beer, if one of those bottles should happen to fall, #{x-1} bottles of beer on the wall."
    break if x == 0
    x -= 1
end