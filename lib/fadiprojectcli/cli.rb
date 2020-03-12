

  class Fadiprojectcli::Cli
  
  
    # 1/start 
    #A) should greet user with name 
    #B)give a description (loop to keep asking for info)
    #C)get data from API file
    #D)create new costume object
    #Eall inside start method 
    
    def welcome
      puts "Welcome to Books search"
      puts "this website will help you determinate wish book match your need, you can start your search by location,grades,rank,name.."
     # @data = Fadiprojectcli::API.get_data
     puts "please wait a moment while we search your result"
     #@objects = Fadiprojectcli::Books.all
      show_books_results
    end 
      
      
      
    
    
  #binding.pry
  
  
  
  
  
  
  #  work with input (keep asking with while exit! put )
    #expect input 
    # depending on what w we get do something 
    #condition to check input for a good value 
  #else tell them try again
    #exit command 
    #if input == exit
    #kill program , end message .
   
  def show_books_results_results
     puts "please enter your search: "
     #@object.each do |obj|
     #puts obj#(name) - obj#(adresse)
  #end
     input = gets.strip.downcase
     
     
    if input == "author" #1
      puts"........... school neighbor list......... "
       puts"books Authors LIST"
       #if obj = @object[0]
       #puts obj.name
       show_books_results
    elsif input ==  "name"
      puts".............school rating................"
      puts"PUTS NAME LIST"
      show_books_results
    elsif input == "reviews"
      puts"............review list.............."
      puts"PUTS REVIEWS LIST"
      show_books_results
    elsif input != "author" || input!="name" || input !="reviews" || input == nil
     puts"write a correct search criteria"
     show_books_results
    end
  end
     
     def leave_search
      input == "leave search"
      puts"thank you for visiting our website,goodbye!" 
     end 
     
   end 
  

  
  