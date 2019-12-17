# class Genre 
#   attr_accessor :name 
  
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @@all << self
#   end 
  
#   def artists
#     Artist.all.each do |artist|
#       artist.songs
#     end
#   end
  
#   def self.all
#     @@all
#   end
  
#   def artists
#     Song.all.songs
#   end
# end

class Genre 
  attr_accessor :name 
  
  @@all = []
  @@song_counter = 0
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    @@song_counter += 1 
  end
  
  def songs
    Song.all.each do |songs|
      songs
    end
  end
  
  def artists
    Artist.all.each do |artist|
      artist.songs
    end
  end
  
  def self.all
    @@all
  end
end