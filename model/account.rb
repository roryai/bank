class Account

attr_accessor :balance
attr_reader :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance += amount
    recorder(amount)
  end

  def withdraw(amount)
    @balance -= amount
    recorder(amount)
  end

  def recorder(amount, date = "25-12-2016")
    @history << {amount: amount, date: date}
  end


end
