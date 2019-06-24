# Class : User 
# Base class for customer and employees
# Contian CRUD function that can be used 

class User
  @@obj_refs = Array.new 

  #class method 
  def self.create(data_hash = {})
    attrs = self.attributes
    temp_obj = self.new

    # iterating through attributes 
    attrs.each do |var|
      value = data_hash.fetch(var)
      temp_obj.instance_variable_set("@#{var}" , value)
      #p temp_obj.instance_variable_get("@#{var}" )
    end 

    @@obj_refs << temp_obj
    temp_obj
    
  end 

  # instance methods 
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
    p attrs
    # Bug -> Here only attr_accessor of one class is incoming 
    # attrs only have attributes of first class it call
    # need to find out a way to access attributes of any class
    # upon
    @@obj_refs.each do |ref|
      obj = ref
      p "-----------------"

      (attrs.size).times do |i|
         p obj.send(attrs[i])
      end
      p "-------end-------"
    end


  end
  
  def self.count
    "Object count = #{@@obj_refs.size}" 
  end
  
  #abstraction 
  
  private 
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

  def exists?
    (@@obj_refs.include? self) ? true : false 
  end

end