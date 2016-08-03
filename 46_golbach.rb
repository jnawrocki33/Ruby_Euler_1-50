include Math

class Array
    def printA
        (0..self.size-1).each do |i|
            print self[i]
            print ", "
        end
    end
end


def is_prime(int)
    
    (2..sqrt(int).to_i).each do |divisor|
        if int%divisor == 0
            return false
        end
    end
    true
end

def is_square(int)
    #print sqrt(int)
    sqrt(int)%1 == 0
end


oddComp = []
primes = []

(3..10000).each do |num|
    if num%2 == 0
        next
    end    
    if is_prime(num)
        primes.push(num)
    else
        oddComp.push(num)
    end
end


def find_contradiction(oddComp, primes)

    primesLess = []
    primesIndex = 0
    
    oddComp.each do |x|
        
        #build list of all primes less than the odd composite
        while primes[primesIndex] < x
            primesLess.push(primes[primesIndex])
            primesIndex += 1
            break if primesIndex == primes.size
        end
        
        #print "primes less: "
        #primesLess.printA
        puts ""
        
        flag = false   #flag is false in contradiction
        
        primesLess.each do |y|
            if is_square((x-y)/2)
                flag = true    #isn't a contradiction
                puts " #{x} = #{y} + 2 x a^2"
                break
            end
        end
        
        if !flag
            return x #this number caused contradiction
        end
    end
    return 0
end

puts "Contradiction: #{find_contradiction(oddComp, primes)}"
