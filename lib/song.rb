class Song
  attr_accessor :artist, :name
 
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    split_filename = filename.split(" - ")
    song = Song.new(split_filename[1])
    song.artist = Artist.find_or_create_by_name(split_filename[0])
    song
  end
  
end