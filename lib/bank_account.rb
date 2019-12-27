class BankAccount
  
  attr_reader :name
  attraccessor :balance, :status
  
  def initialize(name)
    @balance = 1000
    @status = "open"
end

def deposit(amount)
  @balance = @balance + amount
end

def display_balance
  puts "Your balance is $#{@balance}."
end

def valid?
end

def close_account
end

end
