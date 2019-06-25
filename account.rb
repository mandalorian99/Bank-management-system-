# class : account 
require './crud.rb'

class Account 
  ATTRS = [:id, :account_number, :account_type, :account_balance]
  attr_accessor(*ATTRS)   

  include Crud
  @@acn_refs = Array.new 

  def initialize
    @@acn_refs << self 
  end

  def get_obj_refs
     @@acn_refs 
  end 

  def self.get_class_refs
    @@acn_refs
  end

  protected

  def self.balance?(account_number)
    # check if passed acn exists or not 
    attrs = self::ATTRS 
    refs = get_class_refs

    refs.each do |obj|
      if obj.account_number == account_number 
        return "Account balance for account number => #{obj.account_balance}"
      end 

    end

    return "xxxxx NO DATA FOUND xxxxx"
  end 

  def self.credit(account_number, amount)
    # Get obj first 
    p self 
    acn_obj_ref = self.find_by_id(account_number)
    current_balance = acn_obj_ref.account_balance.to_i
    new_balance = current_balance + amount.to_i
    acn_obj_ref.account_balance= new_balance
    # then do the maths 
  end

  def self.debit
    # reduce blance
  end

end