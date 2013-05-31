class AngryBoss
  def bosssays
    puts 'WHAT DO YOU WANT?!'
    loop do
      input = gets.chomp
      break if input == 'bye'
      puts 'WHADDAYA MEAN "I WANT A RAISE"?!? YOU\'RE FIRED!!'
    end
  end
end

boss = AngryBoss.new
boss.bosssays