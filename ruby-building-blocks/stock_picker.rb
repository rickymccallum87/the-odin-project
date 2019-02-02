def stock_picker(prices)
end

def randomize_stock_prices 
  stock_prices = Array.new(20) { |price| rand(20) }
  puts stock_prices.uniq.inspect
  stock_prices
end

stock_picker(randomize_stock_prices())