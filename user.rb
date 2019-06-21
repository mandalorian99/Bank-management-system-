# Class : User 
# Base class for customer and employees
# Contian CRUD function that can be used 

class User
  @@obj_refs = Array.new 

  def self.create(data_hash = {})
    temp_obj = self.new(data_hash)
    @@obj_refs << temp_obj
    temp_obj
  end 

  def read

    attrs = self.attributes

    if !exists? 
      return "xxxxx No data found xxxxx"
    end

    (attrs.size).times do |val|
       p self.send( attrs[val] )
    end

  end

  def update
    # code here
  end

  def delete 

    if !exists?
      return "object already deleted" 
    end
   
    @@obj_refs.delete_if{|ref| ref == self }
    "deleted..."
  end 

  # other methdos 

  def self.all
    
    attrs =self.attributes 

    @@obj_refs.each do |ref|

      p "-----------------"
      (attrs.size).times do |i|
         p ref.send(attrs[i])
      end

    end

  end
  
  def self.count
    "Object count = #{@@obj_refs.size}" 
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

  private 
  def exists?
    (@@obj_refs.include? self) ? true : false 
  end

end