class Birthdays
  attr_reader :birthday_data
  
  def initialize
    @birthday_data = {
      'Chae O\'Keefe' => 'June 7th, 1983',
      'David O\'Keefe'=> 'June 6th, 1980'
    }
  end
  
  def find_date(name)
    @birthday_data.keys.include?(name)
    @birthday_data[name]
  end
  
end

lookup = Birthdays.new
p lookup.birthday_data
p lookup.find_date('Chae O\'Keefe')