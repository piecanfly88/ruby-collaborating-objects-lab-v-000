class Song
  attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)

  song_name = filename.split(" - ")[1]
  song = self.new(song_name)
end


end
