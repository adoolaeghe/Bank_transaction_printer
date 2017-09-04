require 'date'

class Bank

  attr_reader :balance, :transactions

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions.push([{date: Date.today, amount: amount, balance: @balance}])
  end

  def withdraw(amount)
    @balance -= amount
  end

  private

  attr_writer :balance, :transactions
end
