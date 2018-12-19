require_relative 'bankaccount'
RSpec.describe BankAccount do
	before(:each) do
		@account1=BankAccount.new
		@account2=BankAccount.new
	end
	it 'has a method to check checking account balance' do
		@account1.deposit('checking', 1000)
		expect(@account1.show_checking).to eq("Checking Balance: $1000")
	end
	it 'has a method to show the total account balance' do
		@account1.deposit('checking', 1000)
		@account1.deposit('savings', 800)
		expect(@account1.show_balance).to eq('Account Balance Total: $1800')
	end
	it 'has a method to allow user to withdraw cash' do
		expect(@account1.withdraw('checking', 999)).to eq('Withdrew $999')
	end
	it "can't withdraw more money than the account balance" do
		expect(@account1.withdraw('checking', 20000)).to eq("Withdrew $20000")
	end
	it "can't show number of accounts" do
		expect{@account1.show_accounts}.to raise_error(NoMethodError)
	end
	it "can't change interest rate" do
		expect{@account1.set_interest_rate(0.02)}.to raise_error(NoMethodError)
	end

end