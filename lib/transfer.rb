class Transfer
  attr_accessor :status, :sender, :receiver, :amount

def initialize(sender, receiver, amount)
  @status = "pending"
  @sender = sender
  @receiver = receiver
  @amount = amount
end

def valid?
  is_valid_transfer = false
  sender.valid? == true && receiver.valid? == true ? is_valid_transfer = true : is_valid_transfer = false
end

def execute_transaction
  if valid? == true
    sender.balance = sender.balance - @amount
    receiver.balance = receiver.balance + @amount
    @status = "complete"
  end
    
end

end
