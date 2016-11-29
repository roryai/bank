require_relative 'history'

class Account

attr_accessor :balance
attr_reader   :history

  def initialize
    @balance = 0
    @history = History.new
  end

  def deposit(amount, date="25-12-2016")
    @balance += amount
    @history.record(amount, date)
  end

  def withdraw(amount, date="25-12-2016")
    @balance -= amount
    @history.record(amount, date)
  end



end
