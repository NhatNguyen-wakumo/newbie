# 22.06.2019
## Block
_Block is easily to understand like a block of method that are put in curly bracket { } or do ... end._ 
_We have a convention of using Block is:_

_- Curly bracket { } is used for command line or a single block._

_- do ... end is used for a multi-line._

_- Block is not a object._

```
array = [1,2,3,4]
array.map! do |n|
n * n
end
=> [1, 4, 9, 16]
```
_This is the way of using { }_
```
array = [1,2,3,4]
array.map! { |n| n * n } 
=> [1, 4, 9, 16]
```
_This is the way of using "do ... end"_

### The keyword "yield"
_It use to delay the method calling to calculate the value of Block._
```
def double(num)
yield(num)
end 
double (20) {|x| puts x * 2}
```
## Proc
_Proc is the way of storing 1 time 1 variable and can be used by any method that is calling it_
```
number_squared = Proc.new { |n| n * n }
```
_Proc is an object_

## Lambda
_Lambda is a function._
_It can be assigned for a lines of code._
_Lambda is an object._
_It can be returned a value like other functions._
```
def lambda_demo(a_lambda)
puts "I'm the method"
a_lambda.call
end

lambda_demo( lambda{puts "I'm the method"})
```

