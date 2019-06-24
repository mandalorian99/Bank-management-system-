# Class : Customer 
# Handle All customer CRUD 
require './user.rb'

class  Customer < User
  attr_accessor :customer_id , :name , :email , :phone 
  
  def view_balance
    #code here 
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