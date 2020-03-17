

  require 'pry'
  class Fadiprojectcli::CLI
  

    def start
      puts "Welcome to star wars fan search!"
      puts ".................................................................................................................."
      puts "this website will help you found start wars characteres information."
      puts " first You can make your seach of characteres by choosing a random number between 1 to 87"
      puts " then please make an index selection ( index number 2 for height, 3 for eye_color and,4 for gender.)"
       input = gets.strip.downcase
      puts "....................................................................................................................'"
      puts "please wait a moment while we search your result"
      puts "...................................................................................................................."
      
      @data = Fadiprojectcli::API.get_stuff(input)
      @objects = Fadiprojectcli::Information.all
      show_results
    end 
 
   
def show_results
    puts " Here your search result:"
    puts "........................."
    @objects.each.with_index(1)  {|information,index| puts "#{index}. #{information.name}"}
    
  

       while input > 0 & input < 4
       puts "please make a selection by index number"
      input = gets.strip
      @information = @objects [input.to_i - 2]
    if (@information)
      puts"#{@information.height}"
      puts "here is the height "
      show_results
     elsif @information = @objects [input.to_i - 3]
      puts "here is the eye_color"
      puts "#{@information.eye_color}"
      show_results
    elsif @information = @objects [input.to_i - 4]
      puts "here is the gender"
      puts"#{@information.gender}"
      show_results
     elsif input == quit
    quit
    end
   end
      
    #   elsif input != "#{@information.height}" || input!= "#{@information.eye_color}" || input !="#{@information.gender}" || input == nil
    # # puts"Please, write a correct search criteria"
       
       
    def quit 
      puts "thank you for visiting our website, goodbye!" 
     end
   end
     
       
       
       
       
       
        # puts
#       elsif(input=="quit")
#       quit
#     else
#       puts "write a correct search criteria"
#       show_results
#   end
# end
 
   
  
     
     
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
  

  
  