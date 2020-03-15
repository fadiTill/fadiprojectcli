#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::API
  def self.get_stuff(input)
    @charactere_hash = HTTParty.get("https://swapi.co/api/people/1/")
    characteres_obj = {
      name: @charactere_hash["name"],
      height: @charactere_hash["height"],
      eye_color: @charactere_hash["eye_color"],
      gender: @charactere_hash["gender"]
    }
    Fadiprojectcli::Ppeople.new(characteres_obj)
end  
end