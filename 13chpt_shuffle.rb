class Array
  def cycle
    return "no items to shuffle" if self.empty?
    copy = self.clone             #creates new object id - why needed?
    result = []
    until copy.size == 0
      rand_item = copy[rand(copy.size)]
      result << rand_item
      copy.delete(rand_item)
    end
    result
  end
  
  def last
    result = []
    self.size.times do
      rand_item = self[rand(self.size)]
      result << rand_item
      self.delete(rand_item)
    end
    result
  end


  def fetch
    return "self is empty" if self.empty?
    result = []
    self.size.times do           
      result << self[rand(self.size)]
      self.delete(result.join(' '))        
    end
    result
  end
  
end

p [].cycle
p ['apple', 'a', 'cat', 'at', 'anteater'].cycle
p ['bat', 'b', 'blueish', 'beer', 'bananasplit'].last
p ['c', 'car', 'clay'].fetch