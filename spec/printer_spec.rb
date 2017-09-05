require 'printer'

describe Printer do
  subject(:printer) {described_class.new}
  let(:amount) {100}
  let(:balance) {900}
  let(:date) {"2017-09-04"}
  let(:test_transaction) {{date: date, credit: amount, balance: balance}}

  it 'is expected to print header' do
    expect(printer.print_header).to eq("date || credit || debit || balance\n")
  end

  it 'is expected to print transactions' do
    expect(printer.print_transactions(test_transaction)).to eq("2017-09-04 || 100 ||  || 900")
  end
end
