options = [1,2,5,10,20,50,100,200]

sum = 0
count = 0

def build_sum(currentSum, targetSum, options)
    if currentSum > targetSum
        return 0
    end
    if currentSum == targetSum
        return 1
    end
    
    num_options_from_here = 0
    options_array = options
    iter = 0
    options.each do |option|
        
        
        num_options_from_here += build_sum(currentSum + option, targetSum, options[iter..options.size-1])
        iter += 1
        
    end
    
    
    return num_options_from_here
    
end


puts build_sum(sum, 200, options)