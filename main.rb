def stock_picker(prices)
  max_diff = 0
  best_buy = 0
  best_sell = 0

  0.upto(prices.length - 2) do |indx|
    (indx + 1).upto(prices.length - 1) do |inner_indx|
      diff =  prices[inner_indx] - prices[indx]
      if (diff > max_diff)
        max_diff = diff
        best_buy = indx
        best_sell = inner_indx
      end 
    end
  end
  
  [best_buy, best_sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])