require 'date'
require_relative 'printer'
require_relative 'transactions'

class Bank

  attr_reader :balance, :transactions, :history

  INITIAL_BALANCE = 0
  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @history = []
    @transactions = Transactions.new
    @printer = Printer.new
  end

  def deposit(amount)
    increase_balance(amount)
    @transactions.add_credit_transaction(amount, balance, history)
  end

  def withdraw(amount)
    decrease_balance(amount)
    @transactions.add_debit_transaction(amount, balance, history)
  end

  def print_transactions
    @printer.print_transactions(history)
    @printer.print_statement
  end

  private

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end
end
