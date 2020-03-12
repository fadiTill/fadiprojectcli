#find api 
#use set url 
#build hashes out for object 
#call custome class 
#send those back to our cli

class Fadiprojectcli::Api
  def self.get_schools
    @schools_hash = HTTparty.get("https://api.yelp.com/v3/businesses/searchsPyWsvqJfKaC2ttOpmyQectb4xMHBmpDxf7L4GFXq1ojPTPrNu9_BajtIPr_2J5CpJmkL8ZyZhc_X_L0u1Fwe1-r19gTWS0eWF3AFn4V-iAJHaVbzP83dZ0smb9pXnYx")
    binding.pry
end 
end