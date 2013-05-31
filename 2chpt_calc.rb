class TimeCalculator

  def hours_in_a_year
    # 24 hrs/day - 365 days/year
    24*365
  end

  def minutes_in_decade
    #decate is 10 years
    #60 minutes in a hour
    hours_in_a_year * 10 * 60
  end
  
  def age_in_seconds(age)
    #age in years
    #hours_in_a_year
    #60 min/hr
    #60 sec/min
    age*hours_in_a_year*60*60
  end
  
  def seconds_to_age(second)
    #seconds / 60 => minutes
    # minutes / 60 => hours
    # hours / 24 => days
    # days / 365 => years
    
    age = second.to_f.div(6).div(60).div(24).div(365)
  end
end

time = TimeCalculator.new
puts time.hours_in_a_year
puts time.minutes_in_decade
puts time.age_in_seconds(29)
puts time.seconds_to_age(1_025_000_000)