def stock_picker(stock)
  highest=0
 result=Array.new(0)
  stock.each_with_index do |buy,buy_index|
    stock[buy_index..-1 ].each_with_index do |sell,sell_index|
      rate=sell-buy
      if rate>highest
        highest=rate
        result[0]= buy_index
        result[1] = sell_index +buy_index
      end
    end
  end
result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
