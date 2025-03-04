def caesar_cipher(string, shift)
    alphabet_lower = ('a'..'z').to_a
    alphabet_upper = ('A'..'Z').to_a
    
    encrypted_text = string.chars.map do |char|
      if alphabet_lower.include?(char)
        alphabet_lower[(alphabet_lower.index(char) + shift) % 26]
      elsif alphabet_upper.include?(char)
        alphabet_upper[(alphabet_upper.index(char) + shift) % 26]
      else
        char
      end
    end
    encrypted_text.join
  end
  
  print "Insert the text you want to cipher: "
  input_text = gets.chomp
  print "Insert the shift value: "
  shift = gets.chomp.to_i
  
  puts "Ciphered text: #{caesar_cipher(input_text, shift)}"
  
    
      
        
        
      
        
      
    
    
  

  
  
  
  

  