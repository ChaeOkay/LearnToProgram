class LeapYear

  def range
    puts 'What is the starting year?'
    @start_year = gets.chomp.to_i
    puts 'What is the ending year?'
    @end_year = gets.chomp.to_i
  end
  
  def leap_year?(year)
      year % 4 == 0 unless (year % 100 == 0 && year % 400 != 0)  
  end
  
  def display
    (@start_year..@end_year).each do |year|
      puts year if leap_year?(year) == true
    end
  end
  
end

check = LeapYear.new
check.range
check.display