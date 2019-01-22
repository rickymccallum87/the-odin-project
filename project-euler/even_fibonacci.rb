fibonacci = [1,2]

while fibonacci.last < 4000000
    fibonacci.push fibonacci.last + fibonacci[-2]
end
puts fibonacci.to_s

evens = []
fibonacci.each do |i|
    if i % 2 == 0
        evens.push i
    end
end

puts evens.sum