class Song 
  
  attr_accessor :name, :artist, :genre 
  @@all = []
    
  def initialize(name, artist, genre)
  @name = name
  @artitst = artist
  @genre = genre
  @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def genre 
    Genre.all.select {|genre| genre.song == self}
  end 
  
  def artist 
    Artist.all.select{|artist| artist.song == self}
  end 
  
  
end 
  