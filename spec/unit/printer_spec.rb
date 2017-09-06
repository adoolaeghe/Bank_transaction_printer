require 'printer'

describe Printer do
  let(:amount) { 100 }
  let(:balance) { 900 }
  let(:date) { Date.today }
  let(:history) { [{:date=>date, :credit=>amount, :balance=>balance}] }

  subject(:printer) {described_class.new}

  before do
    printer.print_transactions(history)
  end

  it 'is expected to print transactions' do
    expect(printer.print_statement).to eq("date || credit || debit || balance\n #{date} || #{amount} ||  || #{balance}")
  end
end
