

require 'pry'
  class Fadiprojectcli::CLI
  
  
     
    
    def start
      puts "Welcome to star wars fan search"
      puts "this website will help you found start wars information, you can start your seach by Planets, People,and Species.."
      puts "please wait a moment while we search your result"
      puts"................................................"
      input = gets.strip.downcase
      @data = Fadiprojectcli::API.get_stuff(input)
      @objects = Fadiprojectcli::Personage.all
      binding.pry
      #show_starinfos_results
    end 
  end
      
      
      
   
  # def show_starinfos_results
  #   puts "please enter your search: "
  #   #@object.each do |obj|
  #   #puts #{obj.name} - {obj.adresse}
  # end
  #   input = gets.strip.downcase
     
     
  #   if input == "people" #1
  #     puts"...........  infos......... "
  #     puts" infos people"
  #     #if obj = @object[0]
  #     #puts obj.name
  #     #show_starinfos_results
  #   elsif input ==  "planet"
  #     puts"...........planet.................."
  #     puts"Planet infos"
  #     show_starinfos_results
  #   elsif input == "species"
  #     puts"............species infos.............."
  #     puts"SPECIES INFOS"
  #     show_starinfos_results
  #   elsif input != "people" || input!="Planet" || input !="species" || input == nil
  #   puts"write a correct search criteria"
  #   end
  
     
  #   def leave_search
  #     input == "leave search"
  #     puts"thank you for visiting our website,goodbye!" 
  #   end 
  # end 
  

  
  