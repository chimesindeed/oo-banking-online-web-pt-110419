class Transfer
  attr_accessor :status

def initialize(sender, receiver, amount)
  @status = "pending"
end

def valid?
  
end

def execute_transaction
end

end
