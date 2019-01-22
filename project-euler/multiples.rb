num = 1000
naturals = []

while num > 3

    num -= 1

    if num % 3 == 0 or num % 5 == 0
        naturals.push num
        puts num
    end

end

puts naturals.sum