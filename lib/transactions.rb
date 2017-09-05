require 'date'

class Transactions
  attr_reader :history

  def initialize
    @history = []
    @printer = Printer.new
  end

  def add_credit_transaction(amount, balance)
    @history.push({ date: Date.today, credit: amount, balance: balance })
  end

  def add_debit_transaction(amount, balance)
    @history.push({ date: Date.today, debit: -amount, balance: balance })
  end

  def print_history
    print_header
    print_transactions
  end

  private

  def print_header
    @printer.print_header
  end

  def print_transactions
    @history.each do |transaction|
      return @printer.print_transactions(transaction)
    end
  end
end
