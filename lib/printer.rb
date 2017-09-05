class Printer
  def print_transactions(transactions)
    print_table_titles
    print_transactions_rows(transactions)
  end

  private

  def print_table_titles
    return "date || credit || debit || balance\n"
  end

  def print_transactions_rows(transactions)
    return "#{transactions[:date]} || #{transactions[:credit]} || #{transactions[:debit]} || #{transactions[:balance]}"
  end
end
