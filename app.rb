# Entry point of application 

require './customer.rb'
require './employe.rb'
require './account.rb'

class App

  def self.launch
=begin
    #creating a customer    
    c1 = {'customer_id':101 , 'name':'john doe' , 'email':'doe@john.com' , 'phone':'893784'}
    customer = Customer.create(c1)

    p '----reading customer data ----'
    p customer.read    
    
    c2 = {'customer_id':102 , 'name':'abhram' , 'email':'god@lord.com' , 'phone':'999'}
    customer2 = Customer.create(c2)

    Customer.all
    p customer.delete
    p Customer.count

    p "=============="
    e1 = {'emp_id':1002 , 'name':'eva' ,'email':'eva@gmail.com','phone':'94783'}
    emp1 = Employe.create(e1) 
    p emp1.read
    e2 = {'emp_id':1003 , 'name':'angel' ,'email':'angel@hotmail.com','phone':'0000'}
    emp2 = Employe.create(e2)
    
    Employe.all
    p Employe.count
    emp1.delete 
    p emp1.read 
    p Employe.count 

=end

   a1 = {
     'id':3001 ,
     'account_number':'60033678' ,
     'account_type':'saving' ,
     'account_balance': 3500
   }

   accn = Account.create(a1)
   p accn.read
   #p accn.inspect
   
   # creating second account for test
   a2 = {
     'id':3002 ,
     'account_number':'60000999' ,
     'account_type':'current' ,
     'account_balance': 201
   }

   accn2 = Account.create(a2)
   p Account.count

   Account.all
   #p accn2
   #p accn2.view_account
   #p Account.count
=begin
   p "---------------List of all account --------"
   puts accn2.check_balance(60000999)

   p '---------customer balance enquirey------'
   puts Customer.new.balance?(60033678)
    
   Account.delete(accn2)
   p Account.count
   p Account.delete(accn2)
   p Account.all

=end

  end

end 

# run
App.launch