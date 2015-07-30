def ArithGeo(arr)
    common_difference = arr[0].to_i - arr[1].to_i
    common_ratio = arr[1].to_i / arr[0].to_i
    sequence_type = ""
    
    arr.each_with_index do |number, index|
        if arr[index].to_i -  arr[index+1].to_i != common_difference
            if arr.count-1 != index
                sequence_type = "!arithmetic"
            end
        end
    end

    if sequence_type != "!arithmetic"
        return "Arithmetic"
    else
        arr.each_with_index do |number, index|  
            if arr[index].to_i * common_ratio != arr[index+1].to_i
                if arr.count-1 != index
                    sequence_type = "!geometric"
                end
            end
        end
        if sequence_type != "!geometric"
            return "Geometric"
        end
    end   
    return "-1"
end

 ArithGeo(STDIN.gets)           
