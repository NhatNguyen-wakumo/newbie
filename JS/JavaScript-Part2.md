# 25.06.2019
# JavaScript-Part2
## Perform operator with a, b, c
``` var a = 1, b = 2, c = "0", d
console.log(a+b+c)
console.log(a*b+c)
console.log(a/b-c)
console.log(a+b-c)
console.log(a-b*c)
console.log(a+b/c)
console.log(a/b*c)
```
_Result:_
```
30 
20 
0.5 
3 
1 
Infinity 
0 
```
## Print "20"
```
a = a + 1
console.log(a+c)
```
## The difference of double equals and triple equals
_Triple equals:_
_When using === javascript will compare in same variable like num vs num, String vs String and number must be the same when checking not num vs String._
``` 
7 === 7 #true
7 ==='7' #false
```
_Double equals:_
_Using double equals, javascript just compare the value of variable not strictly checking the same of variable._
```
7 == '7' #true
```
## console.log(0.1+0.2 === 0.3)
_This must be false because triple equals just check only the same number even 0.1 + 0.2 is equal to 0.3 is true._
