def caesar_cipher(text, shift)

  shifted_chars = text.split('').map do |char|
    ascii = char.ord
    shifted_ascii = ascii + shift

    # A-Z = 65-90, a-z = 97-122
    if ascii >= 65 and ascii <= 90 # upper case
      shifted_ascii += 26 if shifted_ascii < 65
      shifted_ascii -= 26 if shifted_ascii > 90
    elsif ascii >= 97 and ascii <= 122 # lower case
      shifted_ascii += 26 if shifted_ascii < 97
      shifted_ascii -= 26 if shifted_ascii > 122
    else # non-alphabet
      shifted_ascii -= shift
    end

    shifted_ascii.chr
  end

  puts shifted_chars.join
end

caesar_cipher("What a string!", 5)