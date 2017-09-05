class Printer
  def print_transactions(transactions)
    print_rows(transactions)
  end

  def print_header
    return "date || credit || debit || balance\n"
  end

  def print_rows(transactions)
    return "#{transactions[:date]} || #{transactions[:credit]} || #{transactions[:debit]} || #{transactions[:balance]}"
  end
end
