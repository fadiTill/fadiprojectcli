

 class Fadiproject::Characteres
   
  # "gender": "Male",
  #   "hair_color": "Blond",
  #   "height": "172",
  #   "homeworld": "https://swapi.co/api/planets/1/",
  #   "mass": "77",
  #   "name": "Luke Skywalker",
  #   "skin_color": "Fair",
  #   "created": "2014-12-09T13:50:51.644000Z",
  #   "edited": "2014-12-10T13:52:43.172000Z",
  #   "species": [
   
   all = []
  
  attr_accessor :gender, :hair_color, :height,  :name, :species
  
  def initialize
    @gender = gender
    @hair_color = hair_color 
    @height= height
    @name = name
    @species  = species
    @all<< self 
  end 
  
  
  def self.all
    @all
end 
end 