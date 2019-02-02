def caesar_cipher(text, shift)

  shifted_chars = text.split('').map do |char|
    ascii = char.ord
    shifted_ascii = ascii + shift

    # A-Z = 65-90, a-z = 97-122
    if ascii >= 65 and ascii <= 90 # upper case
      print 'X'
    elsif ascii >= 97 and ascii <= 122 # lower case
      print 'x'
    else # non-alphabet
      print ' '
    end

    shifted_ascii.chr
  end
  puts
  
  puts shifted_chars.join

end

caesar_cipher("What a string!", 5)