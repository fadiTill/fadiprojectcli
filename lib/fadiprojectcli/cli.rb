
require 'pry'
  class Fadiprojectcli::CLI
  
  
    # 1/start 
    #A) should greet user with name 
    #B)give a description (loop to keep asking for info)
    #C)get data from API file
    #D)create new costume object
    #Eall inside start method 
    
    def welcome
      puts "Welcome to star wars fan search"
      puts "this website will help you found start wars information, you can start your seach by Planets, People,and Species.."
     # @data= Fadiprojectcli::API.get_stuff
     puts "please wait a moment while we search your result"
     #@People = Fadiprojectcli::starinfos.all
      show_starinfos_results
    end 
      
      
      
    
    
  binding.pry
  
  
  
  
  
  
  #  work with input (keep asking with while exit! put )
    #expect input 
    # depending on what w we get do something 
    #condition to check input for a good value 
  #else tell them try again
    #exit command 
    #if input == exit
    #kill program , end message .
   
  def show_starinfos_results
     puts "please enter your search: "
     #@object.each do |obj|
     #puts obj#(name) - obj#(adresse)
  #end
     input = gets.strip.downcase
     
     
    if input == "people" #1
      puts"...........  infos......... "
       puts" infos people"
       #if obj = @object[0]
       #puts obj.name
       show_starinfos_results
    elsif input ==  "planet"
      puts"...........planet.................."
      puts"Planet infos"
      show_starinfos_results
    elsif input == "species"
      puts"............species infos.............."
      puts"SPECIES INFOS"
      show_starinfos_results
    elsif input != "people" || input!="Planet" || input !="species" || input == nil
     puts"write a correct search criteria"
     show_starinfos_results
    end
  end
     
     def leave_search
      input == "leave search"
      puts"thank you for visiting our website,goodbye!" 
     end 
     
   end 
  

  
  