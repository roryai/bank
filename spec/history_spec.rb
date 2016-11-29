require_relative '../model/account'

describe Account do

  before (:each) do
    @account = Account.new
  end

  context 'History' do

    it 'records the amount of each transaction' do
      @account.deposit(300)
      expect(@account.history.transactions[0][:amount]).to eq(300)
    end

    it 'records the date of each transaction' do
      @account.deposit(800)
      expect(@account.history.transactions[0][:date]).to eq("25-12-2016")
    end

  end
end
