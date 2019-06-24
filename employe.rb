# class : Employe 
# Contain details of employees 

require './user.rb'

class Employe < User
  attr_accessor :emp_id , :name , :email , :phone  
end 