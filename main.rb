require 'date'
require_relative 'portfolio'
require_relative 'stock'

# Example of usage

stock_1 = Stock.new('AAPL')
stock_2 = Stock.new('GOOGL')

stocks = [stock_1, stock_2]
portfolio = Portfolio.new(stocks)

start_date = Date.new(2024, 05, 01)
end_date = Date.new(2024, 10, 01)

profit = portfolio.profit(start_date, end_date)
puts "Annualized return is #{profit}%"