# class : account 
require './balance.rb'

class Account < Balance 
  ATTRS =[ :id , :account_number , :account_type , :account_balance ]
  attr_accessor(*ATTRS)   
  @@accnt_refs = Array.new 

  # public function 
  def view_account
    #"[ id:#{self.id} , acn:#{self.account_number} , type:#{self.account_type} , balance:#{account_balance}"
    result = "[ "
    ATTRS.each do |key|
      result += self.instance_variable_get("@#{key}").to_s 
      result += " , "
    end
    result += "]"

  end
  
  def edit_account
    #code here
  end

  def self.find_by_id
    #code here
  end

  def self.all

    result = ""
    @@accnt_refs.each do |obj|
       result += obj.view_account
       result += ' , '
    end 
    result 
    
  end

  private 
  # Delete account refrence 
  def self.delete(obj)
    if !exists?(obj)
      return "oops we didn't found information you request!!!"
    end 
    @@accnt_refs.delete(obj)
  end

  # Add new account 
  def self.add(data_hash = Employe{})

    temp_obj = self.new
    
    self::ATTRS.each do |var|
      value = data_hash.fetch(var)
      temp_obj.instance_variable_set("@#{var}" , value) 
    end

    @@accnt_refs << temp_obj
    #returning object
    temp_obj 

  end

  # check if object exist in global obj_refs array 
  def self.exists?(obj)
    (@@accnt_refs.include? obj)? true : false 
  end
  
  # count number of objects 
  def self.count
    "object count:#{@@accnt_refs.size }"
  end 
  
  
end