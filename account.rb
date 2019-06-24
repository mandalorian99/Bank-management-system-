# class : account 

class Account 
  ATTRS =[ :id , :account_number , :account_type , :account_balance ]
  attr_accessor(*ATTRS)
  @@accnt_refs = Array.new 

  # public function 
  def view_account
    #code here 
  end
  
  def edit_account
    #code here
  end

  def self.find_by_id
    #code here
  end

  def self.all
    # get all accounts
  end

  private 
  def delete_account
    #code here 
  end

  def self.add(data_hash = {})
    temp_obj = self.new
    p  self.attributes
    
  end

  #overriding attr_accessors 
  def self.attr_accessor(*vars)
    p "evoked..."
    @attributes ||= []
    @attributes.concat vars
    p "size#{attributes.size}"
  end

  def self.attributes 
    @attributes
  end
  
end