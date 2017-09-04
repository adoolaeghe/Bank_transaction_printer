require 'bank'

describe Bank do

  subject(:bank){described_class.new}

  context 'when initialized' do
    it 'has a default balance of zero' do
      expect(bank.balance).to eq(0)
    end
  end
end
