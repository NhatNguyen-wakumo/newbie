# 17/6/2019

## 0. Introduction to the Object
```
- using 'self' code to check which object are you at the moment 
- using 'even' code to check if the number is even or odd
- using 'next' code to get the next number, '1.next.next' to get 3 from 1 
- 'sort' is use to sort a method 
- between? is the method that use to determine the number lies between. Example: 2 .between? 1, 3. 
- To run, use Ctrl+Enter or Cmd+Enter.
```
```
1. Introduction to the String 
- To describe the String in Ruby use single quote or double quotes is the same. 
- To check the String length, write the function 'String' .length.
- Any valid like number or String that put into the #{ } (Curly Bracket) it will be evaluated and inserted into that location.
- To search in the String we use .include? 'String'.
- Check if the start of the String is "A" we use .start_ with? 'String'.
- Check if the end of the String is "A" we use .end_with? 'String'.
- To find out the index of String we use the .index 'String'.
```
# 18/06/2019

```
2.Boolean Expression in Ruby
2.1 The if...else constructs
- Use the == operator to compare two object.
- Use elsif to check the multiple possibilities inside the if...else. Also 'Unless' keyword use           to put in the place where you want to check for the negative.
- False and nil equates to false 
```
```
2.2 Loops in Ruby
- Infinite loops: it will keep running till you ask them to stop.  
- Run the block of code N times, it will run the code N times.
- While loops is use to repeat the code, when the boolean return false the While loops will stop. Beside, in Until loops, it will execute until the boolean is true.
```
```
3. Introduction to Arrays 
- [ ] is use to create the array. To create a new array we use Array.new
- Array in Ruby allow to store mixes like integers, Strings
```
```
4. Hashes 
- Hashes is the collection of key-value and Hashes can be declared by using 2 curly bracket { }
-  By using [ ] operator, you can retrieve value from hashes object. 
- Structure of the Hash
Hash = {
key1 => value1
key2 => value2
key3 => value3
- Add new element to hash 
subject[“math”] = [8.2]
- To create the new hash:
my_hash = Hash.new
subject = Hash.new
- We have: OS = {
“apple” => “MacOs”
“Asus” => “Window”
}
- To extract the key: OS.each {|key| puts “#{key}”}
- To extract the value: OS.each {|key, value| puts “#{value}”}
- To extract the value and key: OS.each {|key, value| puts “#{key}”: “#{value}”}
```


