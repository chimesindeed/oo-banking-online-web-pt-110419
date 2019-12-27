class Transfer
  attr_accessor :status, :sender, :receiver, :amount, :one_time_transfer 

def initialize(sender, receiver, amount)
  @status = "pending"
  @sender = sender
  @receiver = receiver
  @amount = amount
  @one_time_transfer = 1
end

def valid?
  is_valid_transfer = false
  sender.valid? == true && receiver.valid? == true ? is_valid_transfer = true : is_valid_transfer = false
end

def execute_transaction
  
  if valid? == true && @one_time_transfer == 1
    sender.balance = sender.balance - @amount
    receiver.balance = receiver.balance + @amount
    @status = "complete"
    @one_time_transfer +=1
  elsif valid? == false && @sender.balance !> 0
   p ""

  end
    
end

end
