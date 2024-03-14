def add(str)
    if str.empty?  
        return 0
    else
        str.gsub!("\n",",")
        p str
        arr=str.split(",")
        p arr
        flag=false
        n_num=[]
        for i in 0..arr.length-1  
            num=arr[i].to_i
            if num<0  
                n_num<<num 
                flag=true   
            end
        end
        if flag==true  
            return "negative numbers not allowed, #{n_num}"
        else
            sum=0
            for i in arr
                sum+=i.to_i  
            end
            return sum
        end
    end 
end
p add("1,-4,-5")