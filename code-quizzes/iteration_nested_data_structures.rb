result = []
weird_array = ["blah", :meow, 42, 90, :building]
weird_array.each do |weird_item|
    result << weird_item if weird_item.instance_of? Symbol
end
puts result.inspect

sports = ["basketball", "baseball", "football"]
sports.each_with_index { |sport, index| puts "#{index}. #{sport}" }

last_names = ["D", "Krugman"]
puts last_names.map { |last| 'Paul ' + last }.inspect

soap_opera = ["all", "my", "children"]
puts soap_opera.any? do |word|
    word[0] = 'a'
end

people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]
people.each do |first_name, description|
    print "#{first_name} is a #{description} "
end
puts

test_scores = [["jon", 99], ["sally", 65], ["bill", 85]]
good_grades = test_scores.select do |student, score|
    score > 80
end
puts good_grades.inspect