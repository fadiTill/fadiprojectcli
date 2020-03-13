

 class Fadiproject::Businesses
   
   all = []
  
  attr_accessor :name, :genre, :review,  :adresse, , :price
  
  def initialize
    @name = name
    @genre = genre 
    @adresse= adresse
    @reviews = reviews
    @price  = price 
    @all<< self 
  end 
  
  
  def self.all
    @all
end 
end 