require './lib/printer'
require './lib/transactions'
require './lib/bank'

bank = Bank.new
bank.deposit(1000)
bank.withdraw(500)
bank.print_transactions
