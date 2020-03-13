#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::Api
  def self.get_businesses
    @businesses_hash = HTTparty.get("https://api.yelp.com/v3/businesses)
    binding.pry
end 
end