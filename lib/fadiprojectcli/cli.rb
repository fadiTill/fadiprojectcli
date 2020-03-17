

  require 'pry'
  class Fadiprojectcli::CLI
  

    def start
      puts "Welcome to the star wars fan search!"
      puts ".................................................................................................................."
      puts "This Cli will help you find Star Wars charactere information."
      puts " first You can make your seach of characters by choosing a random number between 1 to 87"
      puts " then please make an index selection ( index number 2. for height, 3. for eye_color and, 4. for gender.)"
       input = gets.strip.downcase
      puts "..................................................................................................................."
      puts "please wait a moment while we search for your result"
      puts "...................................................................................................................."
      
      @data = Fadiprojectcli::API.get_stuff(input)
      @objects = Fadiprojectcli::Information.all
      show_results
    end 
 
   
def show_results
    puts " Here  are your search result:"
    puts "................................................................................."
    @objects.each.with_index(1)  {|information,index| puts "#{index}. #{information.name}"}
    
  

       
       puts "please make a selection by index number"
      input = gets.strip
      @information = @objects[input.to_i - 2]
    if (@information)
      puts "#{@information.height}"
      puts "here is the height "
      quit
     elsif @information = @objects[input.to_i - 3]
      puts "here is the eye_color"
      puts "#{@information.eye_color}"
      quit
    elsif @information = @objects[input.to_i - 4]
      puts "here is the gender"
      puts "#{@information.gender}"
      quit
     elsif (input == "quit")
    quit
    end
   end
      
    
       
    def quit 
      puts "thank you for visiting our website, goodbye!" 
      puts "..................................................."
      puts"....................................................."
     end
   end
 
     
       
       
       
       
       
 