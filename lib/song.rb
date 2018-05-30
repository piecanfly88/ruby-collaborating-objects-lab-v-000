class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_artist, song = filename.split(" - ")
    new_song = self.new(song)
    artist.song = new_song
  end
end
