line_width = 30

toc = ['Table of Contents'], ['Chapter 1: ', 'Chapter 2: ', 'Chapter 3: '], ['Getting Started', 'Numbers', 'Letters'], ['page  1', 'page  9', 'page 13']]

puts toc[0].center(line_width*2)

x = 0
loop do
    puts (toc[1][x] + toc[2][x]).ljust(line_width) + (toc[3][x]).rjust(line_width)
    break if x >= 2
    x += 1    
end