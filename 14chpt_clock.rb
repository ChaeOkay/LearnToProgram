def clock(&block)
	time_now = Time.new.hour
	time_now > 13 ? time_now -= 12 : time_now

	time_now.times { block.call }
end

clock {puts 'DONG!'}