# loop program gets, until enter
# all gets are pushed into array
# alphabetize array (sort)
# display

class Ary
  def initialize
    @ary = []
  end
  
  def build_ary
    loop do
      item = gets.chomp
      break if item == ""
      @ary.push(item)
    end
  end
  
  def sort_and_print
    puts @ary.sort.join(', ')
  end
end

ary = Ary.new
ary.build_ary
ary.sort_and_print