# Entry point of application 

require './customer.rb'

class App
  def self.launch
    #creating a customer 
    c1 = {'customer_id':101 , 'name':'john doe' , 'email':'doe@john.com' , 'phone':'893784'}
    Customer.create(c1)     
  end

end

# run
App.launch