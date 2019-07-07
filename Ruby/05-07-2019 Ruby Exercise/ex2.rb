def isPrime( number )
result = true
for i in 2..number-1
if number % i == 0
result = false
break
end
end

return result
end

count = 0
number = 2

while count < 10
if isPrime( number )
 count += 1
     puts "#{number}"
end
     number += 1
end
