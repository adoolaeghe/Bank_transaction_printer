class Printer

  def initialize
    @statement = ["date || credit || debit || balance\n"]
  end

  def print_statement
    @statement.join(' ')
  end

  def print_transactions(history)
    history.each do |transaction|
      print_rows(transaction)
    end
  end

  private

  def print_rows(transactions)
    @statement.push("#{transactions[:date]} || #{transactions[:credit]} || #{transactions[:debit]} || #{transactions[:balance]}")
  end

end
