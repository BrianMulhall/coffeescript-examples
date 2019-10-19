price = 180
profit =  (50 + (20/10) * (200 - price)) * price - (140 + (100 * (50 + ((20/10) * ( 200 - price )))))




number_sold = (sale_price) ->
  (50 + (20/10) * (200 - sale_price))  

revenue = (sale_price) ->
  (number_sold sale_price) * sale_price  

cost = (sale_price,overhead,cost_price) ->
  overhead + (number_sold sale_price) * cost_price 


better_profit = (sale_price, overhead, cost_price) ->
  (revenue sale_price) - (cost sale_price,overhead,cost_price)

console.log('the better profit is: ', better_profit(180, 140, 100))
console.log('this is the profit: ',profit)