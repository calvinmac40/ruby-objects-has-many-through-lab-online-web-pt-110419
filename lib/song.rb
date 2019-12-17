class Song 
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@all << self
  end
  
  def new(song)
    song = Artsit.new(name,genre)
  end
  
  def self.all
    @@all
  end
end