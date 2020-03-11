

  class Fadiprojectcli::Cli
  
  
    # 1/start 
    #A) should greet user with name 
    #B)give a description (loop to keep asking for info)
    #C)get data from API file
    #D)create new costume object
    #Eall inside start method 
    
    def welcome
      puts "  Welcome to Best school rate"#{name}
      puts "this website will help you determinate wish school match your need, you can start your search by location,grades,rank,name"
     puts "please wait a moment while we search your result"
      puts " creating result"
    end 
      
      
      
    
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
   
  def show_schools_results
     puts "please enter your search "
     input = "gets.strip.downcase"
    if input == adresse
      puts " school neighbor list "
    elsif input == school name
      puts" school rating"
    elsif input == grades
      puts "same grades list"
    else
      puts "write a correct search criteria"
      puts "invalide search"
   end 
   end 
  end 

  