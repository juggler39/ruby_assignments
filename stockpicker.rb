# frozen_string_literal: true

def stock_picker(stock_prices)
  days = []
  max = 0
  stock_prices.each.with_index do |buy_price, buy_day|
    stock_prices.drop(buy_day + 1).each.with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if profit > max
        max = profit
        days = [buy_day, sell_day + buy_day + 1]
      end
    end
  end
  days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
