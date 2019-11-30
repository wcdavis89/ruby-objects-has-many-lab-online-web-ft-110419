class Song
  attr_accessor :artist, :name, :genre
  
  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if @artist == nil 
      return nil
    else
    self.artist.name
  end
  end

end


class Artist 
  attr_accessor :name, :song

  def initialize(name)
    @name=name
    @songs=[]
  end
  
  def add_song(song)
    song.artist=self
    @songs << song
  end
  
  def add_song_by_name(name)
    song=Song.new(name)
    add_song(song)
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def song_count
    @songs.size
  end
    
end
