

 class Fadiproject::School
   
   all = []
  
  attr_accessor :name, :type :grade_range, :parent_rating,  :city, :state, :adresse
  
  def initialize
    @name = name
    @type = type 
    @grade_range = grade_range 
    @parent_rating = parent_rating
    @city = city
    @state = state 
    @adresse = adresse
    @all<< self 
  end 
  
  
  def self.all
    @all
end 
end 