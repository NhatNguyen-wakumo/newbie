# 18-07-2019
## Write a function to count a vowel word:
```
vowelLength = "nguyencongquangnhat".replace(/[^aeiou]/ig, "").length; 
console.log(vowelLength);
```
## Check if a number is prime or not 
```
function isPrime(input) {
let prime = true;
for (let i = 2; i <= Math.sqrt(input); i++) {
if (input % i === 0) {
prime = false;
break;
}
}
return prime && (input > 1);
}

console.log(isPrime(5));
```
## 
