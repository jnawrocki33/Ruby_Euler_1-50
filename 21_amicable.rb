arr = []

(2..10000).each do |x|
    arr.push(x)
end

def d(n)
    count = 0
    (1..n/2).each do |divisor|
        count += divisor if n%divisor == 0
    end
    return count
end

def sumAmicable(arr)
    count = 0
    arr.each do |n|
        temp = d(n)
        if temp != n
            
            if d(temp) == n
                puts n
                count += n
            end
        end
    end
    return count
end

puts sumAmicable(arr)
