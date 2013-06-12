class Dragon 
  def initialize name 
    @name=name 
    @asleep=false 
    @stuff_in_belly =10
    @stuff_in_intestine=0
    puts"#{@name}isborn." 
  end 
  
  def feed(name_of_food)
    puts "Youfeed #{@name} #{name_of_food}." 
    case name_of_food
    when 'bug'
      @stuff_in_belly=5 
    when 'apple'
      @stuff_in_belly=10
    else
      puts "#{@name} needs bugs or apples"
    end
    passage_of_time 
  end 
  
  def walk(distance)
    puts "You walk#{@name}." 
    @stuff_in_intestine=0    
    passage_of_time 
  end
  
  private
  
  def passage_of_time
    if @stuff_in_belly > 0   
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    end
  end
end