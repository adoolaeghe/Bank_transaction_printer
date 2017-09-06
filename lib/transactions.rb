require 'date'

class Transactions
  def add_credit_transaction(amount, balance, history)
    history.push({ date: Date.today, credit: amount, balance: balance })
  end

  def add_debit_transaction(amount, balance, history)
    history.push({ date: Date.today, debit: -amount, balance: balance })
  end
end
