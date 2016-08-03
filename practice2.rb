include Math


odd_digits = ["1", "3", "5", "7", "9"] #must include zero?
nums_to_check = []

iter = 1
odd_digits.each do |hundred_thousand|
    if iter < 100000
        hundred_thousand = "0"
    end
    odd_digits.each do |ten_thousand|
        if iter < 10000
            ten_thousand = "0"
        end
        odd_digits.each do |thousand|
            if iter < 1000
                thousand = "0"
            end
            odd_digits.each do |hundred|
                if iter < 100
                    hundred = "0"
                end
                odd_digits.each do |ten|
                    if iter < 10
                        ten = "0"
                    end
                    odd_digits.each do |one|
                        numString = ""
                        numString = hundred_thousand + ten_thousand + thousand + hundred + ten + one
                        nums_to_check.push(numString.to_i)
                        iter += 2
                    end
                end
            end
        end
    end
end

class Array
    def show100
        (1..200).each do |i|
            print self[i]
            print ", "
        end
    end
end

testArray = [2]
(2..1000000).each do |num|
    testArray.push(num) unless num%2 == 0
end


def is_prime(int)
    
    (2..sqrt(int).to_i).each do |divisor|
        if int%divisor == 0
            return false
        end
    end
    true
end


def rotate_left(i)
    string = i.to_s
    newString = "a"*(string.size)
    (1..string.size-1).each do |index|
        newString[index - 1] = string[index]
    end
    newString[newString.size - 1] = string[0]
    return newString.to_i
end

def circularPrimes(nums_to_check)
    circular_primes = []
    
    (0..nums_to_check.size-1).each do |index|
        num = nums_to_check[index]
        
        if circular_primes.include?(num)
            next
        end
        
        check = true
        next unless is_prime(num)
        
        (0..num.to_s.size-1).each do
            num = rotate_left(num)
            if is_prime(num) == false
                check = false
                break
            end
        end
        if check == true
            circular_primes.push(num)
            puts num
            (0..num.to_s.size-1).each do
                num = rotate_left(num)
                if circular_primes.include?(num) == false
                    circular_primes.push(num)
                    puts num
                end
            end
        end
            
        
    end
    return circular_primes
end

answerArray = circularPrimes(testArray)
answerArray.uniq!
print "size is: "
puts answerArray.size

                
            
        
