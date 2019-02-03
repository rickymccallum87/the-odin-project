def stock_picker(prices)
  # First, check for the easy answer
  best_buy_price = prices.min
  best_sell_price = prices.max
  best_buy_day = prices.index(best_buy_price)
  best_sell_day = prices.index(best_sell_price)
  if best_buy_day < best_sell_day
    return [best_buy_day, best_sell_day]
  end

  # prices.each_with_index do |price, index|
  # end

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