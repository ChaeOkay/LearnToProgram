require 'yaml'

hash = {'1' => 'dog',
        '2' => 'cat',
        '3' => 'bird'}
        
declare_filename = 'yamltest.txt'

File.open(declare_filename, 'w+') {|file| file.write(hash.to_yaml)}

puts YAML::load File.read(declare_filename)
