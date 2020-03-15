#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::API
  def self.get_stuff
    @charactere_hash = HTTParty.get("https://swapi.co/api/people/1/")
    binding.pry
    stuff_obj = {
      name: @charactere_hash_hash["name"],
      height: @charactere_hash_hash["height"],
      gender: @charactere_hash["gender"],
      eye_color: @charactere_hash["eye_color"],
      # species: @charactere_hash["https://swapi.co/api/species/1/"],
      # homeworld: @charactere_hash["https://swapi.co/api/planets/1/"]
      
      
    }
end  
end