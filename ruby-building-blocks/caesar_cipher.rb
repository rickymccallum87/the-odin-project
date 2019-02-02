def caesar_cipher(text, shift)
  ascii_codes = text.split('').map! { |char| char.ord }
  puts ascii_codes.inspect
end

caesar_cipher("What a string!", 5)