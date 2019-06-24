# Class : Customer 
# Handle All customer CRUD 
require './balance.rb'

class  Customer < Balance
  attr_accessor :customer_id , :name , :email , :phone 

  def balance?(acn)
    # loop into global obj_ref array 
    # check if obj.account_number == acn or not 
    # if found a match return obj refrence 
    # this object refrence used by class::balance/function 
    # to check balance 

    #@@obj_refs.each do |obj|
    #  if obj.instance_variable_get("@account_number") == acn 
    #    result = obj.check_balance(acn)
    #  end 
    #end
    self.check_balance(acn)
  end
  
  def test 
    puts "evoked..test...."
  end
  
  # Abstraction 
  private 
  def deposite
    #code here 
  end

  def widraw
    #code here 
  end

  def transfer
    #code here 
  end

end