#### YAML 사용하기
아래 내용은 Struggling With Ruby (http://strugglingwithruby.blogspot.kr/2008/10/yaml.html?m=1)을 참고로 정리한 내용이다.

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

