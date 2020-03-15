#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::API
  def self.get_stuff
    @charactere_hash = HTTParty.get("https://swapi.co/api/people")
    binding.pry
    characteres_obj = {
      people: @charactere_hash["people"],
#       planet: @charactere_hash["planet"],
#       species: @charactere_hash["species"],
      
    }
#     Fadiprojectcli::Information.new(characteres_obj)
 end  
end