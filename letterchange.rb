def LetterChanges(str)
split_str = str.chars.to_a
  vowels = ['a','e','i','o','u']
  letters = *('a'..'z')
  inter_str = Array.new()
  split_str.each do |x|
    x.downcase!
    is_letter = letters.include? x
    if is_letter == false
      inter_str << x
    elsif x == 'z'
      inter_str << 'a'
    else
      inter_str << x.succ.downcase
    end
  end
  inter_str.each do |x| 
    if vowels.include? x
      x.upcase!
    end
  end
  inter_str.join("")
end

  
  
  
LetterChanges(STDIN.gets)           
