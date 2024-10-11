class Portfolio
  def initialize(stocks = [])
    @stocks = stocks
  end

  def add_stock(stock)
    @stocks << stock
  end

  # @param start_date [Date]
  # @param end_date [Date]
  # @return Annualized return of the portfolio between the given dates.
  # @see https://www.investopedia.com/terms/a/annual-return.asp
  def profit(start_date, end_date)
    initial_value = @stocks.reduce(0) { |value, stock| value + stock.price(start_date) }
    final_value = @stocks.reduce(0) { |value, stock| value + stock.price(end_date) }
    years = (end_date - start_date).to_f / 365.0

    result = ((final_value.to_f / initial_value.to_f) ** (1.0 / years)) - 1
    (result * 100).round(2)
  end
end