class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
  end

  def artist_name=(name)
    self.artist = Artist.create_by_name(name)
  end


end
