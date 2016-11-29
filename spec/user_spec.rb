require_relative '../model/account.rb'

describe Account do

  before (:each) do
    @account = Account.new
  end


  context 'User ' do

    it 'can deposit money in the account' do
      @account.deposit(500)
      expect(@account.balance).to eq(500)
    end

    it 'can withdraw money from the account' do
      @account.balance = 100
      @account.withdraw(40)
      expect(@account.balance).to eq(60)
    end



  end
end
