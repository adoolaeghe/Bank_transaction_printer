require 'bank'

describe Bank do

  subject(:bank){described_class.new}

  context 'when initialized' do
    it 'has a default balance of zero' do
      expect(bank.balance).to eq(0)
    end
  end

  context 'deposit an amount to the account' do
    before do
      bank.deposit(1000)
    end
    it 'increase the balance by the required amount' do
      expect(bank.balance).to eq (1000)
    end
  end

  context 'withdrawal an amount of money from the account' do
    before do
      bank.deposit(1000)
      bank.withdraw(500)
    end
    it 'decrease the balance by the required amount' do
      expect(bank.balance).to eq (500)
    end
  end

  context 'print the transactions history' do
    before do
      bank.deposit(1000)
    end
    it 'prints the transactions table history with one transactions row' do
      expect(bank.print_transactions).to eq ("2017-09-05 || 1000 ||  || 1000")
    end
  end
end
