#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::API
  def self.get_stuff
    @charactere_hash = HTTParty.get("https://swapi.co/api/people/?search=r2")
    binding.pry
    characteres_obj = {
      name: @charactere_hash["name"],
      eye_color: @charactere_hash["eye_color"],
      homeworld: @charactere_hash["species"]
      
    }
#     Fadiprojectcli::Information.new(characteres_obj)
 end  
end