require 'printer'
require 'date'

describe Transactions do
  subject(:transactions) { described_class.new }
  let(:amount) { 200 }
  let(:balance) { 1000 }
  let(:date) { Date.today }
  let(:history) { [{ date: date, credit: amount, balance: balance }] }

  context 'add credit transaction to history' do
    before do
      transactions.add_credit_transaction(amount, balance, history)
    end

    it 'has a debt transaction to the history of transaction' do
      expect(history).to include({ date: date, credit: 200, balance: 1000 })
    end
  end

  context 'add debit transaction to history' do
    before do
      transactions.add_debit_transaction(amount, balance, history)
    end
    it 'adds a transaction to the transaction history' do
      expect(history).to include({ date: date, debit: -200, balance: 1000 })
    end
  end
end
