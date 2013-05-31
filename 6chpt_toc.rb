@toc = 'Table of Contents'
line_width = 40
puts @toc.center(line_width)
puts

left = ['Chapter 1:  Getting Started', 'Chapter 2:  Numbers', 'Chapter 3:  Letters']
right = ['page  1', 'page  9', 'page 13']

left.zip(right).each do |x, y|
  puts x.ljust(line_width) + y.ljust(line_width)
end