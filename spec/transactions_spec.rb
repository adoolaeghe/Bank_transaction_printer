require 'printer'

describe Transactions do
  subject(:transactions) {described_class.new}
  let(:amount) { 200 }
  let(:balance) { 1000 }
  

  context 'initialize transactions' do
    it 'has not transactions by default' do
      expect(transactions.history).to eq([])
    end
  end

  context 'add debit transaction to history' do
    before do
      transactions.add_credit_transaction(amount, balance)
    end
    it 'has a debt transaction to the history of transaction' do
      expect(transactions.history).to include ({ :date=> Date.today, :credit=>200, :balance=>1000 })
    end
  end
  context 'add debit transaction to history' do
    before do
      transactions.add_debit_transaction(amount, balance)
    end
    it 'adds a transaction to the transaction history' do
      expect(transactions.history).to include ({ :date=> Date.today, :debit=>200, :balance=>1000 })
    end
  end

  context 'add debit transaction to history' do
      before do
        transactions.add_debit_transaction(amount, balance)
      end
    it 'is expected to print logs' do
      expect(transactions.print_history).to eq("2017-09-05 ||  || 200 || 1000")
    end
  end
end
