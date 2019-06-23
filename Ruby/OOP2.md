# 23.06.2019
## Attribute accessor 
_We have 3 methods for getter and setter:_
_```attr_reader``` will create a getter._
_```attr_writer```will create a setter._
_```attr_accessor``` will both create getter and setter, for more it can create instance variable_
```
class Car

attr_reader :name, :price
attr_writer :name, :price

def to_s
"#{@name}: #{@price}"
end

end
```
```
class Book
attr_accessor :title, :pages   
end
```
## The to_s method
```
to_s_method.rb
class Being

def to_s
"This is Being class"
end
end

b = Being.new
puts b.to_s
puts b
```
## The polymorphism
_The polymorphism is a function that allow us to do the operator or method with different data._
```
polymorphism.rb
class Animal

def make_noise 
"Some noise"
end

def sleep 
puts "#{self.class.name} is sleeping."
end

end
```

