class Transfer
  attr_accessor :status, :sender, :receiver

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
end

end
