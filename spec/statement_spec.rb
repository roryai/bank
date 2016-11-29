require_relative '../model/account'

describe Account do

  before (:each) do
    @account = Account.new
  end

  it 'prints a statement when there is a single 2 digit credit on record' do
    @account.deposit(50)
    expect(@account.prints).to eq("date       || credit    || debit     || balance\n25-12-2016 || 50.00     ||           || 50.00\n")
  end

  it 'prints a statement when there is a single 3 digit credit on record' do
    @account.deposit(500)
    expect(@account.prints).to eq("date       || credit    || debit     || balance\n25-12-2016 || 500.00    ||           || 500.00\n")
  end

  it 'prints a statement when there is a single 4 digit credit on record' do
    @account.deposit(5000)
    expect(@account.prints).to eq("date       || credit    || debit     || balance\n25-12-2016 || 5000.00   ||           || 5000.00\n")
  end

  it 'prints a statement when there is a single 5 digit credit on record' do
    @account.deposit(50000)
    expect(@account.prints).to eq("date       || credit    || debit     || balance\n25-12-2016 || 50000.00  ||           || 50000.00\n")
  end

  it 'prints a statement when there is a debit and a credit' do
    @account.deposit(50000)
    @account.withdraw(5000)
    expect(@account.prints).to eq("date       || credit    || debit     || balance\n25-12-2016 || 50000.00  ||           || 50000.00\n25-12-2016 ||           || 5000.00   || 45000.00\n")
  end

end
