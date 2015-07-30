def SimpleSymbols(str)

 str_array = str.split('')
    if (/[a-zA-Z]/ =~ str) != nil
        str_array.each_with_index { |placeholder, index|
         return "false" if /[a-zA-Z]/ =~ str_array[0]
         return "false" if placeholder =~ /[a-zA-Z]/ and (str_array[index-1] != "+" or str_array[index+1] != "+")
        }
        return "true"
    else
        return "false"
    end
end
SimpleSymbols(STDIN.gets)           
