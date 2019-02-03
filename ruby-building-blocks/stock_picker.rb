def stock_picker(prices)
  # First, check for the easy answer
  best_buy_price = prices.min
  best_sell_price = prices.max
  best_buy_day = prices.index(best_buy_price)
  best_sell_day = prices.index(best_sell_price)
  if best_buy_day < best_sell_day
    return [best_buy_day, best_sell_day]
  end

  # Then, go the thorough route
  prices.each_with_index do |price, index|
    # find best profit for this day
      # take slice of days in future
      # find max of that
      # calc best profit
    # compare to running best profit
      # if greater, replace running best
      # otherwise, discard
  end

  # report pair of days that provided best profit
  return 'Easy way failed'
end

def randomize_prices 
  prices = Array.new(20) { |price| rand(19) + 1 }
  puts prices.inspect
  prices
end

prices = randomize_prices()
best_days = stock_picker(prices)
puts best_days.inspect