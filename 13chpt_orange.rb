class OrangeTree
  attr_reader :tree_height, :count_the_oranges
  
  def initialize
    @tree_height = 0
    @count_the_oranges = 0
  end
  
  def passed_years(years)
    years.times do
      @tree_height += 1
      produce_orange if @tree_height >= 5
    end
    check_alive?
  end
  
  def height
    yield(@tree_height)
  end
  
  def count_the_oranges
    yield(@count_the_oranges)
  end
  
  def pick_an_orange
    if @count_the_oranges >= 1 
      @count_the_oranges -= 1 
      puts "That orange was tasty."
    else 
      puts "Not enough oranges to pick!"
    end
  end
  
  private
  
  def produce_orange
    case @tree_height
    when 5..10
      @count_the_oranges = 5
    when 10..15
      @count_the_oranges = 10
    else
      @count_the_oranges
    end
  end
  
  def check_alive?
    if @tree_height > 15
      puts "Tree is over 15 years, and is dead."
      exit
    end
  end
end

first_tree = OrangeTree.new

first_tree.height do |height| 
  puts "The height of the tree is #{height}"
end

first_tree.count_the_oranges do |count| 
  puts "The count of oranges is #{count}"
end

first_tree.passed_years(11)
first_tree.pick_an_orange

first_tree.count_the_oranges do |count| 
  puts "The count of oranges is #{count}"
end

first_tree.passed_years(3)

first_tree.height do |height| 
  puts "The height of the tree is #{height}"
end

first_tree.count_the_oranges do |count| 
  puts "The count of oranges is #{count}"
end

first_tree.pick_an_orange
first_tree.pick_an_orange

first_tree.passed_years(2)

