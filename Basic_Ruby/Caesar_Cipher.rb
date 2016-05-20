def letters(string)
  string.strip.split("")
end

def caesar_cipher(letters, shift)
  letters.map! do |letter|
    if letter >= 'A' && letter <= 'Z'
      (((letter.ord - 'A'.ord + shift) % 26) + 'A'.ord)
    elsif letter >= 'a' && letter <= 'z'
      (((letter.ord - 'a'.ord + shift) % 26) + 'a'.ord)
    elsif letter.ord == 32
      letter.ord
    else
      letter.ord + shift
    end
  end
end

def join_together(caesar_cipher)
  new_array = []
  caesar_cipher.map! { |n| new_array << n.chr }
  new_array.join
end

puts join_together(caesar_cipher(letters("What a string"), 5))