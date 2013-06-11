def billion_seconds_old(year, month, day)
  birthday = Time.local(year, month, day)
  birthday + 1_000_000_000
end

p billion_seconds_old(1983, 6, 7)