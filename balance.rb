=begin 
require './account.rb'

class Balance < Account
  attr_accessor :id, :customer_id, :balance

  def check_balance(account_number)
    if self.account_number.to_i == account_number
      "Account balance for #{account_number} => #{self.account_balance} INR"
    else 
      'no match found in records..'
    end 
  end

  protected 

  def credit
    # add balance 
  end

  def debit
    # reduce blance
  end
end