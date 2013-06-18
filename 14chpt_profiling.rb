def profile(status, description, &block)
	case status
	when "on"
		start = Time.new
		block.call
		puts "#{description}: #{Time.new - start} seconds."
	when "off"
		puts "profile is off."
	else
		puts "Unknown status."
	end
end

profile("on", "count") { 10000.times {"hello"} }