# Class : User 
# Base class for customer and employees
# Contian CRUD function that can be used 

class User
  @@obj_refs = Array.new 
  temp_obj = self.new

  def self.create(data_hash = {})
    @attrs = self.attributes
    temp_obj = self.new 
    p self.methods(false)
    #p @attrs.inspect
    @attrs.each do |var|
      
    end
    
    #@@obj_refs << temp_obj
  end

  def read
    # code here 
  end

  def update
    # code here
  end

  def delete 
    # code here 
  end 

  # other methdos 

  def self.all
    # code here
  end

  def exists?
    # code here 
  end 

  # overriding attr_asscessor 
  def self.attr_accessor(*vars)
    @attributes ||= []
    @attributes.concat vars
    super(*vars)
  end

  def self.attributes
    @attributes
  end

  def attributes
    self.class.attributes
  end


end