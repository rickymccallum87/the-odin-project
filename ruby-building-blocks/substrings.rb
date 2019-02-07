def substrings input, dict
    found = {}
    input_words = input.split(' ')

    input_words.each do |input_word|
        dict.each do |sub|
            if input_word.include?(sub)
                found[sub] = 0 if found[sub].nil?
                found[sub] += 1
            end
        end
    end

    found
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }