require_relative 'history'
require_relative 'statement'

class Account < Statement

attr_accessor :balance
attr_reader   :history, :statement

  def initialize
    @balance = 0
    @history = History.new
    # @statement = Statement.new
  end

  def deposit(amount, date="25-12-2016")
    @balance += amount
    @history.record(amount, date, "credit")
  end

  def withdraw(amount, date="25-12-2016")
    @balance -= amount
    @history.record(amount, date, "debit")
  end



end
