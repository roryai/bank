class History

attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def record(amount, date = "25-12-2016", type)
    @transactions << {amount: amount, date: date, type: type}
  end



end
