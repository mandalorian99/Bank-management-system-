# Class : Customer 
# Handle All customer CRUD 
require './account.rb'
require './crud.rb'

class  Customer < Account
  
  ATTRS = [:customer_id, :name, :email, :phone]
  attr_accessor(*ATTRS)
  
  include Crud
  @@obj_refs = Array.new 

  def initialize
    @@obj_refs << self 
  end

  def get_obj_refs
     @@obj_refs 
  end 

  def self.get_class_refs
    @@obj_refs
  end

  def balance?(acn)
    self.check_balance(acn)
  end
  
  def test 
    puts "evoked..test...."
  end
  
  # Abstraction 
  private 
  def self.deposite(account_number , amount)
    "crediting #{amount} into your account #{account_number} "
    Account.credit(account_number , amount)
  end

  def self.widraw(account_number , amount)
    Account.debit(account_number , amount)
  end

  def self.transfer(transfer_from , transfer_to , amount)
    Account.debit(transfer_from, amount)
    Account.credit(transfer_to, amount)
  end

end