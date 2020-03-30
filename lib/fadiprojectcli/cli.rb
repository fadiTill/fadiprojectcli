

  require 'pry'
  class Fadiprojectcli::CLI
  

    def start
      puts "Welcome to the star wars fan search!"
      puts ".................................................................................................................."
      puts "This Cli will help you find Star Wars charactere information."
      puts " first You can make your seach of characters by choosing a random number between 1 to 87"
      puts " then please make an index selection ( index number 2. for height, 3. for eye_color and, 4. for gender.)"
      puts "to leave the search type quit, or make a new search"
       input = gets.to_i
       if input == "quit"
         quit
        elsif input < 0  || input > 87 || input != Integer
      puts "N/A please make a new seach"
       else input != "quit"
      puts "..................................................................................................................."
      puts "please wait a moment while we search for your result"
      puts "...................................................................................................................."
      
    #   [1,2,3,4,5,6,7,8,9,10].each do |number|
    #     @data = Fadiprojectcli::API.get_stuff(number)
    #   end 
    # end
      
      @data = Fadiprojectcli::API.get_stuff(input)
      @objects = Fadiprojectcli::Information.all
      # if input > 10 || @objects.empty?
      #   puts "N/A"
      show_results
    end 
  end
# end
 
   
def show_results
    puts " Here  are your search result:"
    puts "................................................................................."
    @objects.each.with_index(1)  {|information,index| puts"#{index}. #{information.name}"}
    
  

       
       puts "please make a selection by index number"
      input = gets.to_i
      if input == 2
      @information = @objects[input.to_i - 2]
      puts "#{@information.height}"
      puts "here is the height"
      show_results
      # puts "please make a new search"
      # puts "......................................................................................................."
      # start
     elsif input == 3
     @information = @objects[input.to_i - 3]
      puts "here is the eye_color"
      puts "#{@information.eye_color}"
      show_results
      # puts "please make a new search"
      # puts "......................................................................................................."
      # start
    elsif input == 4
      @information = @objects[input.to_i - 4]
      puts "here is the gender"
      puts "#{@information.gender}"
      show_results
      # puts "please make a new search"
      # puts "........................................................................................................"
      else input != 2 || input !=3 || input !=4 
      puts "N/A please make a new seach"
      quit
     
    end
   end
      
    
       
    def quit 
      puts "thank you for visiting our website, goodbye!" 
      puts "..................................................."
      puts"....................................................."
     end
   end
 
     
       
       
       
       
       
 