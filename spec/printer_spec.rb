require 'printer'

describe Printer do
  subject(:printer) {described_class.new}
  let(:amount) {100}
  let(:balance) {900}
  let(:date) {"2017-09-04"}
  let(:test_transaction) {{date: date, credit: amount, balance: balance}}

  it 'is expected to print logs' do
    expect(subject.print_transactions(test_transaction)).to eq("2017-09-04 || 100 ||  || 900")
  end
end
