require 'pry'

class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    #@@all << self
    save
  end
  
  def save
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select{|songs| songs.artist == songs.artist}
  end
  
  def new_song(name,genre)
    new_song = Song.new(name,self,genre)
    #binding.pry
  end
  
  def genres 
    self.songs.collect{|songs|songs.genre}
  end
end

