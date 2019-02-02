def caesar_cipher(text, shift)

  ascii_codes = text.split('').map do |char|
    (char.ord + shift).chr
  end
  
  puts ascii_codes.join

end

caesar_cipher("What a string!", 5)