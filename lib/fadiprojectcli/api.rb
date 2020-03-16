#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli



class Fadiprojectcli::API
  



  
  def self.get_stuff
    @charactere_hash = HTTParty.get("http://swapi.co/api/people/1/")
    @infos_obj = {
         name: @charactere_hash["name"],
        height: @charactere_hash["height"],
        eye_color: @charactere_hash["eye_color"],
        gender: @charactere_hash["gender"] }
      binding.pry
  
      
#     Fadiprojectcli::Information.new(characteres_obj)
 end  
end