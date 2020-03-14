#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::API
  def self.get_stuff
    @stuff_hash = HTTParty.get(https://swapi.co/api/planets/1/)
  #   binding.pry
end  
#end