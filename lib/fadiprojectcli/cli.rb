

  require 'pry'
  class Fadiprojectcli::CLI
  
  
     
    
    def start
      puts "Welcome to star wars fan search"
      puts "this website will help you found start wars  charactere information, you can start your seach by  People by number between 1 to 87, and you will get the charactere, name them input an index number 2 for height,3 for eye_color and  4 for gender."
      puts".................................................."
      puts "please wait a moment while we search your result"
      puts "................................................"
       input = gets.strip.downcase
      @data = Fadiprojectcli::API.get_stuff(input)
      @objects = Fadiprojectcli::Information.all
     #binding.pry
      show_results
    end 
 
      
   #1.luke skywalker
   #2.r2
   #2 subset data star
   #or type search to go back
      
   
  def show_results
     puts " Here your search result:"
     puts "........................."
     @objects.each.with_index(1)  {|information,index| puts "#{index}. #{information.name}"}
     
     puts "please make a slection by index number"
     input=gets.strip
     @information = @objects [input.to_i - 2]
     if (@information)
       puts"#{@information.eye_color}"
       elsif(input=="quit")
       quit
     else
       puts "write a correct search criteria"
       show_results
   end
 end
 
   
   def quit 
     puts "thank you for visiting our website, goodbye!" 
   end
 end
     
     
     
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
  

  
  