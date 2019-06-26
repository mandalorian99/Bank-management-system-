# Entry point of application 

require './customer.rb'
require './employe.rb'
require './account.rb'

class App

  def self.launch
    display_menu_1
  end

  def self.display_menu_1
    options = ["Manage Customers" , "Manage  Employee" , "Manage Accounts" , "Exit"]
    system('clear')
    puts "\n\n\n\n"
    puts "\t\t\t================================="
    puts "\t\t\t   Welcome to Bank Of Mahendra "
    puts "\t\t\t================================="

    (options.size).times do |count|
      puts "  \t\t\t [#{count+1}]  #{options[count]}" 
    end 
    print "\t\t\t Enter your choice : "
    choice = gets.chomp

    switcher(choice)

  end

  def self.display_menu_2
    options = ["Create Customers" , "Show Details" ,"Delete Customer" , "Update Customer" , "Exit"]
    system('clear')
    puts "\n\n\n\n"
    puts "\t\t\t================================="
    puts "\t\t\t   Manage Customers "
    puts "\t\t\t================================="

    (options.size).times do |count|
      puts "  \t\t\t [#{count+1}]  #{options[count]}" 
    end 
    print "\t\t\t Enter your choice : "

    case(gets.chomp) 
    when '1'
      puts "creating "
    when '2'
      puts "reading"
    when '3'
      puts "deleting"
    when '4'
      puts "updating"
    when '5'
      exit
    else 
      puts "invalid choice"
    end 

  end

  def self.display_menu_3
    options = ["Create Employee" , "Delete Employee" , "Update Employee" , "Exit"]
    system('clear')
    puts "\n\n\n\n"
    puts "\t\t\t================================="
    puts "\t\t\t   Manage Employee "
    puts "\t\t\t================================="

    (options.size).times do |count|
      puts "  \t\t\t [#{count+1}]  #{options[count]}" 
    end 
    print "\t\t\t Enter your choice : "
    choice = gets.chomp

    switcher(choice)

  end

  def self.display_menu_4
    options = ["Create Account" , "Delete Account" , "Update Account" , "Exit"]
    system('clear')
    puts "\n\n\n\n"
    puts "\t\t\t================================="
    puts "\t\t\t   Manage Accounts "
    puts "\t\t\t================================="

    (options.size).times do |count|
      puts "  \t\t\t [#{count+1}]  #{options[count]}" 
    end 
    print "\t\t\t Enter your choice : "
    choice = gets.chomp

    switcher(choice)

  end

  def self.switcher(choice)
    case(choice)
    when '1'
      display_menu_2
    when '2'
      display_menu_3
    when '3'
      display_menu_4
    when '4'
      display_menu_1
    else 
      puts "\t\t\t xxxxxx You need to consult a eye doctor xxxxxx"
    end 
  end 

end 

# run
App.launch