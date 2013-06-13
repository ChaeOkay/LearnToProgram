class Dragon
  def initialize
  end
  
  def dispatch(method_call)
    return p "String needed!" unless method_call.is_a?(String)
    
    if ['feed', 'walk'].include?(method_call)
      p self.send(method_call)
    else
      p "#{method_call} is not a command"
    end
  end
  
  private
  
  def feed
    "I was fed"
  end
  
  def walk
    "I was walked"
  end
  
end


dew = Dragon.new
p dew.dispatch(1) == "String needed!"
p dew.dispatch('eat') == "eat is not a command"
p dew.dispatch('feed') == "I was fed"
p dew.dispatch('walk') == "I was walked"