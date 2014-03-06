require 'yaml'

yaml_string = <<EOS
-
  name: Tom
  age: 32
-
  name: Dick
  age: 19  
EOS

config = YAML.load(yaml_string)	# from yaml_string

puts config[0]['age']  # 32
puts config[1]['name'] # Dick

arry = <<EOS
- [Tom, 32] # Array
- [Dick, 19] # Array
EOS

hash = <<EOS
{ name: Tom, age:32 }
EOS

config2 = YAML.load_file("config.yml") # from yaml file
x = config2[0]['age']
puts x