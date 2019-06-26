# Moudle_name : CRUD 
# Contain CRUD methods for object 

module Crud 
  
  module ClassMethods

    def create(data_hash = {})
      attrs = self::ATTRS 
      temp_obj = self.new
      # iterating through attributes 
      attrs.each do |var|
        value = data_hash.fetch(var)
        temp_obj.instance_variable_set("@#{var}" , value)
      end
        temp_obj
    end     

    # count number of objects in a global object refrence array 
    def count
      obj_refs = get_class_refs
      "Object count = #{obj_refs.size}" 
    end

    # display all record 
    def all
      obj_refs = Array.new 
      obj_refs = get_class_refs 
      
      attrs = self::ATTRS
      # Bug -> Here only attr_accessor of one class is incoming 
      # attrs only have attributes of first class it call
      # need to find out a way to access attributes of any class
      # upon
        obj_refs.each do |ref|
        obj = ref
        p "-----------------"
  
        (attrs.size).times do |i|
           p obj.send(attrs[i])
        end
        p "-------end-------"
      end

      # return object based upon attribute passed 
      def find_by_id(uid)
        obj_refs = Array.new 
        obj_refs = get_class_refs
        
        obj_refs.each do |obj|
          
          if obj.account_number == uid 
            return obj 
          end 

        end 

      end

    end

  end

  # dynamicaly including sub module 
  def self.included(base)
    base.extend(ClassMethods)
  end

  # instance methods 
  def read
    attrs = self.class::ATTRS

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
    obj_refs = Array.new 
    obj_refs = get_obj_refs 

    if !exists?
      return "object already deleted" 
    end
   
    obj_refs.delete_if{|ref| ref == self }
    "deleted..."
  end 
  
  # other methdos

  private 

  def exists?
    obj_refs = Array.new 
    obj_refs = get_obj_refs 
    "obje refs gete:#{obj_refs}"
     (obj_refs.include? self) ? true : false 
  end 
end