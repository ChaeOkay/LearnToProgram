require 'yaml'

test_array = ['array item 1', 'array item 2',
              'array item 3', 'array item 4']

test_string = test_array.to_yaml

filename = 'yamltest.txt'

File.open(filename, 'w') {|file| file.write test_string}

read_string = File.read(filename)

read_array = YAML::load(read_string)

puts(read_string == test_string)
puts(read_array == test_array)