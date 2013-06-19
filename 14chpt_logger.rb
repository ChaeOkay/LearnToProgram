def log(block_description, &block)
	puts "#{block_description} has started running..."
  value = block.call
	puts "...#{block_description} has finished, returning #{value}"
end

log("three is greater than two?") {log("greeting") { puts "hello" }; 3>2}