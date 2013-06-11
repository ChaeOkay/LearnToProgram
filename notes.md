##Notes - Ruby 1.9.3

###Methods

####IO/Object
gets
puts
####IO
each
####String
to_i
to_s
to_f
chomp
reverse
length - number of characters including spaces
upcase downcase
swapcase
capitalize - first character - not first letter 
center(line_width - in numbers)
ljust - left justify
rjust(line_width - numbers)
####Fixnum
+
_
*
/
to_s

####Integer
times

####Array
reverse
length
each
to_s (though usually not used - puts or join has more functionality)
join
+
*
-
last
push
pop

####Iterators
each
times

####Hash
length
each
to_s

####Dir
each

####YAML
.to_yaml
YAML::load(yaml_string)
####File
File.exist?
File.open (filename, 'w/w+/r/r+') {|filename| file.write(something)}
File.read(filename)
File.rename(original, new)
####Dir
Dir.chdir
Dir['*.txt'] => array
####Time
spans about Dec 1901 to Jan 2038 - Date and DateTime more cumbersome to use
Time.local