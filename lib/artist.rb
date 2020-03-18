class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self
  end 
  
  def new_song(name, genre) 
    Song.new(name, artist, genre)
  end 
  
  def genres 
    Genre.all.select do |genre|
      genre.artist == self
  end 
  
  
  
end 