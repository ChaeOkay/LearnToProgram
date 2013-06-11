def spank(year, month, date)
  birthday = Time.local(year, month, date)
  current_year = Time.now

  result = current_year - birthday
  result /= 31_536_000    # 60sec. 60min. 24hrs * 365days
  result.floor.times {puts "SPANK"}
end

spank(2012, 6, 7)