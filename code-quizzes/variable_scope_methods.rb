# cool = "Beans"
# def dinner_plans()
#   puts cool
# end

# dinner_plans()

def multiply a, b
    a * b
end

puts multiply(2, 3)

def silly_check num
    num < 5 ? "The number is less than 5"
        : "The number is greater than or equal to 5"
end

puts silly_check 3
puts silly_check 8

def funify boring_array
    boring_array << 'fun'
end

puts funify(['bla', 'ugh', 'sigh']).inspect