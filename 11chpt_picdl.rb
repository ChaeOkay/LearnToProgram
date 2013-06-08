Dir.chdir "Pics"
pic_names = Dir['../../../temp/*.{JPG,jpg}']

puts 'What would you like this batch to be called?'
batch_name = gets.chomp

puts
puts "Downloading #{pic_names.length} files: "
pic_number = 1
  
pic_names.each do |name|
  puts pic_names
  
  print '.'
  new_name = if pic_number < 10
      "#{batch_name}0#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
    end
    
  if File.exist?('new_name')    #Code does not identify if file name exists
    puts "#{new_name} currently exists, please rename file."
    return
  else
    File.rename(name, new_name)
    pic_number = pic_number + 1  
  end
end
puts