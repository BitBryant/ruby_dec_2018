class BankAccount
	@@accounts=0
	attr_accessor :checking, :savings, 
	attr_reader :acct_number,:accounts, :interest_rate
	private
		def initialize
			@acct_number=Random.new.rand(100000000)
			@checking = 0
			@savings = 0
			@interest_rate = 0.01
			@@accounts +=1
		end
		def set_interest_rate(val)
        	@interest_rate=val
        	self
   		 end
    	def show_accounts
			p @@accounts
		end

	public
	def show_acct_info
		p "Account# #{acct_number}"
		p "Account Balance Total: $#{self.checking+self.savings}"
		p "Checking Balance: $#{self.checking}"
		p "Savings Balance: $#{self.savings}"
		p "Interest Rate = #{@interest_rate*100}%"
		self
	end
	def deposit acct, val
		@checking += val if acct == "checking"
		@savings += val if acct == "savings"
		p "Deposit $#{val}"
		self
	end
	def withdraw acct, val
		if acct == "checking"
			if val<=@checking
				@checking -= val 
				
			end
       		if @checking<val
       			p "You have insufficient funds."
       			
       		end
       	end
       	if acct == "savings"
       		if @savings>=val
		        @savings -= val
		       
		    end
			if @savings<val
		    	p "You are broke."
		    	
		    end
		end
        p "Withdrew $#{val}"
       
    end
	
	def show_acct_num
		p acct_number		
	end

    def show_checking
    	p "Checking Balance: $#{self.checking}"
    end
    def show_savings
    	p "Savings Balance: $#{self.savings}"  	
    end
    def show_balance
    	p "Account Balance Total: $#{self.checking+self.savings}"
    end
end

#acct=BankAccount.new.deposit("checking",5000).deposit("savings", 10000).show_acct_info.withdraw("checking", 1000).withdraw("savings", 500).show_acct_info
