require 'bank'

describe Bank do

  subject(:bank){described_class.new}

  context 'when initialized' do
    it 'has a default balance of zero' do
      expect(bank.balance).to eq(0)
    end

    it 'has a default transation history' do
      expect(bank.transactions).to eq []
    end
  end

  context 'deposit an amount to the account' do
    before do
      bank.deposit(1000)
    end
    it 'increase the balance by the required amount' do
      expect(bank.balance).to eq (1000)
    end
    it 'adds a transaction to the transaction history' do
      expect(bank.transactions).to include ({:date=> Date.today, :credit=>1000, :balance=>1000})
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
    it 'adds a transaction to the transaction history' do
      expect(bank.transactions).to include ({:date=> Date.today, :debit=>-500, :balance=>500})
    end
  end

  context 'deposit money'
end
