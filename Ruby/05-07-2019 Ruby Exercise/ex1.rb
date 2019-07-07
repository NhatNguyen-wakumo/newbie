def prime(n)
  for i in 2...(n)
	isPrime = true
	for j in 2...(i)
		if i % j == 0
			isPrime = false
			break
		end
	end
	if isPrime
		puts i
	end
   end
end
 
prime(200)