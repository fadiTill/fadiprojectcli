

 class Fadiproject::Books
   
   all = []
  
  attr_accessor :name, :genre :author, :review,  :library, :pages, :price
  
  def initialize
    @name = name
    @genre = genre 
    @author = author
    @reviews = reviews
    @library = library
    @pages = pages
    @price  = price 
    @all<< self 
  end 
  
  
  def self.all
    @all
end 
end 