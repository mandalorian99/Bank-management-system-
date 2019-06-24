# Entry point of application 

require './customer.rb'
require './employe.rb'
require './account.rb'

class App

  def self.launch
    #creating a customer 
=begin
    c1 = {'customer_id':101 , 'name':'john doe' , 'email':'doe@john.com' , 'phone':'893784'}
    customer = Customer.create(c1)
    p customer 


    c2 = {'customer_id':102 , 'name':'abhram' , 'email':'god@lord.com' , 'phone':'999'}
    customer2 = Customer.create(c2)

    Customer.all
    p "=============="
    e1 = {'emp_id':1002 , 'name':'eva' ,'email':'eva@gmail.com','phone':'94783'}
    emp1 = Employe.create(e1) 

    e2 = {'emp_id':1003 , 'name':'angel' ,'email':'angel@hotmail.com','phone':'0000'}
    emp2 = Employe.create(e2)
    
    Employe.all
=end



   a1 = {
     'id':3001 ,
     'account_number':'60033678' ,
     'account_type':'saving' ,
     'account_balance': 0
   }

   accn = Account.add(a1)
   #p accn.inspect
   
   # creating second account for test
   a2 = {
     'id':3002 ,
     'account_number':'60000999' ,
     'account_type':'current' ,
     'account_balance': 201
   }

   accn2 = Account.add(a2)
   #p accn2
   p accn2.view_account
   p Account.count

   p "---------------List of all account --------"
   
   # deleting a account 
   #Account.delete(accn2)
   #p Account.count
   #p Account.delete(accn2)
   #p Account.all


  end

end 

# run
App.launch