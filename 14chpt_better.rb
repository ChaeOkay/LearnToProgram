class Logger
$nesting = 0

	def log(block_description, &block)
		puts "\t" * $nesting + "#{block_description} has started running..."
      $nesting += 1
      value = block.call
      $nesting -= 1
		puts "\t" * $nesting + "...#{block_description} has finished, returning"
    puts "\t" * $nesting + "#{value}"
	end
end

nest = Logger.new
nest.log("three is greater than two?") {nest.log("greeting") {"hello" }; 3>2}