class Artist
  attr_accessor :name
  attr_reader :songs

  @@song_count = 0

  def initialize(name)
    @name = name
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
  end
end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    s = Song.new(name)
    self.add_song(s)
    s
  end
  
 def self.song_count
   Song.all.count 
 end
end
