require_relative 'history'

class Account

attr_accessor :balance
attr_reader :history

  def initialize
    @balance = 0
    @history = History.new
  end

  def deposit(amount)
    @balance += amount
    @history.recorder(amount)
  end

  def withdraw(amount)
    @balance -= amount
    @history.recorder(amount)
  end




end
