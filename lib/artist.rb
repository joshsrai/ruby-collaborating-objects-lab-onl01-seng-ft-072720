class Artist
  attr_accessor :name, :songs

 @@all = []
 
  def initialize(name)
    @name = name
    save
  end
  
    def self.all 
    @@all
  end
 
   def songs
    Song.all.select{|song| song.artist == self}
  end
  
  def save
    @@all << self
  end
 
    def add_song(song)
    song.artist = self
    self.songs << song
  end
  
  def print_songs
    @songs.each{|song| puts "#{song}"}
  end
 
end