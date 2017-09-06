require 'bank'
require 'date'

describe Bank do

  subject(:bank) { described_class.new }
  let(:date) { Date.today }
  let(:deposit) { 1000 }
  let(:withdraw) { 500 }

  context 'when initialized' do
    it 'has a default balance of zero' do
      expect(bank.balance).to eq(0)
    end
  end

  context 'deposit an amount to the account' do
    before { bank.deposit(deposit) }
    it 'increase the balance by the required amount' do
      expect(bank.balance).to eq(deposit)
    end
  end

  context 'withdrawal an amount of money from the account' do
    before do
      bank.deposit(deposit)
      bank.withdraw(withdraw)
    end

    it 'decrease the balance by the required amount if sufficient amount' do
      expect(bank.balance).to eq(withdraw)
    end
  end

  context 'print the transactions history' do
    before { bank.deposit(deposit) }
    it 'prints the transactions table history with one transactions row' do
      expect(bank.print_transactions).to eq ("date || credit || debit || balance\n #{date} || #{deposit} ||  || #{deposit}")
    end
  end
end
