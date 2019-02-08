snowy_owl = { type: 'bird', diet: 'carnivore', life_span: '10 years' }
puts snowy_owl.inspect

result = []
first_names = ["Hamburglar", "Grimace", "Ronald"]
last_name = "McDonald"

first_names.each do |first_name|
    result << first_name + ' ' + last_name
end

puts result.inspect

personality_types = ["bad", "good", "great"]

people = personality_types.map { |type| type + ' person' }

puts people.inspect