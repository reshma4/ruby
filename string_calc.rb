def add(str)
    if str.empty?  
        return 0
    else
        sum=0
        arr=str.split(",")
        for i in arr
            sum+=i.to_i   
        end
        return sum
    end 
end
p add(" ")
p add("1,45,67,32,34,34,12,2")