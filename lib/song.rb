class Song
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name) # initialize w song name 
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 