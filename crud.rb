# Moudle_name : CRUD 
# Contain CRUD methods for object 

module Crud 
  @@obj_refs = Array.new 
  
  module ClassMethods
    
    @@obj_refs = Array.new 
    def create(data_hash = {})
      #attrs = self.attributes
      attrs = self::ATTRS 
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

    

  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  def test1 
    p "evokedd...."
  end


  # instance methods 
  def read
    attrs = self.class::ATTRS

    # exists function not working in read 
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

  def all

    attrs =self::ATTRS
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
  
  def count
    "Object count = #{@@obj_refs.size}" 
  end
  
  def exists?
     (@@obj_refs.include? self) ? true : false 
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

  

end 