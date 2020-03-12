#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::Api
  def self.get_schools
    @schools_hash = HTTparty.get("")
end 
end