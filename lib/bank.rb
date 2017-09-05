require 'date'
require 'transactions'
class Bank

  attr_reader :balance, :transactions

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transactions = Transactions.new
  end

  def deposit(amount)
    increase_balance(amount)
    @transactions.add_credit_transaction(amount, balance)
  end

  def withdraw(amount)
    decrease_balance(amount)
    @transactions.add_debit_transaction(amount, balance)
  end

  def print_transactions
    @transactions.print_history
  end

  private

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end
end
