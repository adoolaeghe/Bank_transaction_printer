require './lib/bank'
require 'date'

let(:date) { Date.today }
let(:deposit) { 1000 }
let(:withdraw) { 500 }

bank = Bank.new
bank.deposit(deposit)
bank.withdraw(withdraw)

it 'prints the statement of users transactions' do
  expect(bank.print_transactions).to eq("date || credit || debit || balance\n#{date} || #{deposit} ||  || #{balance}\n#{date} || #{withdraw} ||  || #{balance}")
end
