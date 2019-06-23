# 23.06.2019
## To define a class 
```
class yoyo
```
## To create a new class
```
yoyo = yoyo.new
```
## Module
_Module is another way to apply polymorph to Ruby._
_We can use "ancestors" method at any class to find the string of finding._
```
module sound
def sound (sound)
puts "#{sound}"
class yoyo 
include sound
end
puts"---yoyo ancestors"
puts yoyo.ancestors
```


