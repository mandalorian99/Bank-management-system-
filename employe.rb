# class : Employe 
# Contain details of employees 

require './user.rb'

class Employe < User
  attr_accessor :emp_id , :name , :email , :phone

   #constructor
  def initialize(emp_hash = {})

    self.emp_id = emp_hash.fetch(:emp_id) 
    self.name = emp_hash.fetch(:name) 
    self.email = emp_hash.fetch(:email)
    self.phone = emp_hash.fetch(:phone) 
    
  end
  
end 