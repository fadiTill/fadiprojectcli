 class Fadiprojectcli::Peoples
   
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
   
   
  
   attr_accessor :height, :name, :eye_color, :gender
   
   @@all=[]
  
  def initialize(infos)
    infos.each  {|key, value| self.send(("#{key}="), value)}
    # @height = height
    # @name = name
    # @eye_color= eye_color
    # @gender = gender
    # @all<< self 
    save
  end 
  
  
  def self.all
    @@all
  end 

def save 
  @@all << self

end 
end
