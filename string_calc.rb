def add(str)
    l=str.length
    if str.empty?  
        return 0
    else
        if str.start_with? ("//")
            delimiter=str[2]
            str=str[4..l-1]
            str.gsub!(delimiter,",")
        end 
        str.gsub!("\n",",")
        arr=str.split(",")
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
p add("//;\n1;2;5")
p add("")
p add("4")
p add("8,9")
p add("1\n2,3")
p add("1\n2,-3")