require_relative '../model/account'

describe Account do

  before (:each) do
    @account = Account.new
  end

  it 'is initialised with a balance of 0' do
    expect(@account.balance).to eq(0)
  end

  




end
