class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil
      create_by_name(name)
    else
      find_by_name(name)
    end
  end

  def find_by_name(name)
    self.all.find{|artist| artist.name == name}
  end

  def create_by_name(name)
    song = self.new(name)
    song.save
  end
end
