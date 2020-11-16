def posNeg(arr)
    count = 0
    sum = 0
    if arr.length == 0
        return []
    else
        for num in arr
            if (num > 0)
               count = count + 1 
            else
                sum = sum + num 
            end
        end
        return [count, sum]
    end
end

puts posNeg([1,2,3,4,5,6,7,8,9,-1,-23])