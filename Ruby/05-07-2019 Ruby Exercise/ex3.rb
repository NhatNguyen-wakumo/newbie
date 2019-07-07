def palindrome(num)
  rev = 0
    a = num
 while a != 0
        i = a%10
        rev = rev*10 + i
        a /= 10
     end
    if rev == num
       puts "#{num} is a Palindrome"
    else
       puts "Sorry but #{num} is not a Palindrome"
    end
  end

palindrome(131)
