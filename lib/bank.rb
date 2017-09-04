require 'date'

class Bank

  attr_reader :balance, :transactions

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    increase_balance(amount)
    @transactions.push([{date: Date.today, amount: amount, balance: @balance}])
  end

  def withdraw(amount)
    decrease_balance(amount)
    @transactions.push([{date: Date.today, amount: -amount, balance: @balance}])
  end


  private
  
  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end

  attr_writer :balance, :transactions
end
