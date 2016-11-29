require_relative '../model/account'

describe Account do

  before (:each) do
    @account = Account.new
  end

  it 'is initialised with a balance of 0' do
    expect(@account.balance).to eq(0)
  end

  it 'records the date of each transaction' do
    @account.deposit(800)
    expect(@account.history[0][:date]).to eq("25-12-2016")
  end

  it 'records the amount of each transaction' do
    @account.deposit(300)
    expect(@account.history[0][:amount]).to eq(300)
  end


end
