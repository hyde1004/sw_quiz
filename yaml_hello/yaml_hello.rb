require 'yaml'

# Object to YAML
puts "Hello YAML!".to_yaml # String to YAML
puts ["one", "two", "buckle my shoes!"].to_yaml # Array to YAML
puts ({ 1 => "one",  2 => "two" }).to_yaml # Hash to YAML 

# YAML to a file
#YAML.dump(["one", "two", "buckle my shoes!"], "./config.yml")

