require 'yaml'

yaml_string = <<EOS
#
# - { name: Tom, age: 32 }
# - { name: Dick, age: 19 }
#
-
  name: Tom
  age: 32
-
  name: Dick
  age: 19  
EOS

config_from_string = YAML.load(yaml_string)	# from yaml_string
config_from_file = YAML.load("#{Dir.pwd}/config.yml")

puts config_from_string[0]['age']  # 32
puts config_from_string[1]['name'] # Dick
puts config_from_string

puts config_from_file[0]['age']
puts config_from_file[1]['name']
puts config_from_file