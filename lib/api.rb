#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::Api
  def self.get_starinfos
    @starinfos_hash = HTTparty.get(http swapi.co/api/planets/1/)
    binding.pry
end 
end