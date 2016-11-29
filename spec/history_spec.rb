require_relative '../model/account'

describe History do

  before (:each) do
    @account = Account.new
  end

    it 'records the amount of each transaction' do
      @account.deposit(300)
      expect(@account.history.transactions[0][:amount]).to eq(300)
    end

    it 'records the default date for each transaction' do
      @account.deposit(800)
      p @account.history.transactions
      expect(@account.history.transactions[0][:date]).to eq("25-12-2016")
    end

    it 'records a specific date for a transaction' do
      @account.deposit(800, "01-01-2017")
      expect(@account.history.transactions[0][:date]).to eq("01-01-2017")
    end

    xit 'calculates the change in balance between transactions' do
      @account.deposit(800)
      expect().to
    end

end
