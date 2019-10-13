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
  
  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    song = self.new(song)
    song.artist_name = artist
    song 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    
  end
  
end 