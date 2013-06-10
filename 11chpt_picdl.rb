Dir.chdir "Pics"

pic_names = Dir['../../../temp/*.{JPG,jpg}']
p pic_names

puts 'What would you like this batch to be called?'
batch_name = gets.chomp

p "Downloading #{pic_names.length} files: "
pic_number = 1
  
pic_names.each do |name|                  #pic 00A
  p name
  p pic_number
  
  print '.'
  if pic_number < 10                              #pic 00A, pic_number =1 => true
    new_name = "#{batch_name}0#{pic_number}.jpg"   #new_name = "batch_name01.jpg"
    p new_name
  else
    new_name = "#{batch_name}#{pic_number}.jpg"
    p new_name
  end

  p File.exist? new_name
  if File.exist? new_name    #Code does not identify if file name exists
    puts "#{new_name} currently exists, please rename file."
    exit
  else
    File.rename(name, new_name)
  end
  pic_number = pic_number + 1  
end

=begin
Dir.chdir "Pics"
pic_names = Dir['../../../temp/*.{JPG,jpg}']
p pic_names

puts 'What would you like this batch to be called?'
batch_name = gets.chomp

p "Downloading #{pic_names.length} files: "
pic_number = 1
  
pic_names.each do |name|                  #pic 00A
  p name
  p pic_number
  
  print '.'
  if pic_number < 10                              #pic 00A, pic_number =1 => true
    new_name = "#{batch_name}0#{pic_number}.jpg"   #new_name = "batch_name01.jpg"
    p new_name
    filecheck(new_name)
  else
    new_name = "#{batch_name}#{pic_number}.jpg"
    p new_name
  end
end

def filecheck(new_name)
    p File.exist?('new_name') 
  if File.exist?('new_name')    #Code does not identify if file name exists
    puts "#{new_name} currently exists, please rename file."
    return
  else
    File.rename(name, new_name)
    pic_number = pic_number + 1  
    p name
end
=end