def LongestWord(sen)

 
  longest = ""

  sen.scan(/\w+/) do |word|
    if word.length > longest.length
      longest = word
    end
  end
                      
  return longest
end
LongestWord(STDIN.gets)           
