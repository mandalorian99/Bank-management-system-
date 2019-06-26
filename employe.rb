# class : Employe 
# Contain details of employees 

require './user.rb'
require './crud.rb'

class Employe 
  ATTRS =[:emp_id, :name, :email, :phone]
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

end 