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
  one_time_transfer_light = "green"
  if valid? == true && one_time_transfer_light == "green"
    sender.balance = sender.balance - @amount
    receiver.balance = receiver.balance + @amount
    @status = "complete"
    one_time_transfer_light = "red"
  end
    
end

end
