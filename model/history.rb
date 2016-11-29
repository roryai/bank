class History

attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def recorder(amount, date = "25-12-2016")
    @transactions << {amount: amount, date: date}
  end

end
