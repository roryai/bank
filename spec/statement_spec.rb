require_relative '../model/account'

describe Account do

  before (:each) do
    @account = Account.new
  end

  it 'prints a statement when there is a single transaction on record' do
    @account.deposit(500)
    expect(@account.statement.prints).to eq("date      || credit    || debit    || balance\n'25-12-16'|| 500.00    ||          || 500.00")
  end

end
