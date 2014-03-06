#### YAML 사용하기
아래 내용은 Struggling With Ruby (http://strugglingwithruby.blogspot.kr/2008/10/yaml.html?m=1)과 Tutorial: YAML - Data Serialization in Ruby (http://csc.columbusstate.edu/woolbright/class/swatson.pdf)을 참고로 정리한 내용이다.

YAML은 XML에 비해 눈으로 데이터 확인이 용이하며, 해당 데이터를 쉽게 직렬화할 수 있다.

다음은 YAML의 hello program이다.

```ruby
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

config2 = YAML.load_file("config.yml") # from yaml file
x = config2[0]['age']
puts x
```

다음은 config.xml 파일의 내용이다.
```ruby
--- # Indented Block
- 
 name: John Smith
 age: 33
```


YAML을 구성하기 위해서는 Array 로 할것인가, Hash로 할것인가로 결정해주면 된다.
```ruby
arry = <<EOS
- [Tom, 32] # Array
- [Dick, 19] # Array
EOS

hash = <<EOS
{ name: Tom, age:32 }
EOS
```

다음은 또다른 예제이다.
```ruby
require 'yaml'

# Object to YAML
puts "Hello YAML!".to_yaml # String to YAML
puts ["one", "two", "buckle my shoes!"].to_yaml # Array to YAML
puts ({ 1 => "one",  2 => "two" }).to_yaml # Hash to YAML 

# YAML to a file
#YAML.dump(["one", "two", "buckle my shoes!"], "./config.yml")

```