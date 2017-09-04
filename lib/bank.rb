class Bank

  attr_reader :balance, :transactions

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transactions = []
  end

  private

  attr_writer :balance, :transactions
end
