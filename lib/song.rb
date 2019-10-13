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
    song.artist = artist
    song 
  end 
  
end 