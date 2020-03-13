#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::Api
  def self.get_businesses
    @businesses_hash = HTTparty.auth("Bearer #{API_KEY}").get("https://api.yelp.com/v3/businesses/search?location=Las Vegas")
    binding.pry
end 
end