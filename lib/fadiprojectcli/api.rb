#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::API
  def self.get_stuff
    @charactere_hash = HTTParty.get("https://swapi.co/api/people/?")
    binding.pry
    characteres_obj = {
      url: @charactere_hash[]
      #people/2/: @charactere_hash["/2/"],
      #people/3/: @charactere_hash["/3/"],
      
    }
#     Fadiprojectcli::Information.new(characteres_obj)
 end  
end