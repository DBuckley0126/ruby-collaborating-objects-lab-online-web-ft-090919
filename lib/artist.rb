class Artist

@@all = []

def self.all
  @@all
end

def self.find_or_create_by_name (name)
    Artist.all.find {|artist| artist.name = name} else Artist.new (name)
end


attr_accessor :name

def initialize (name)
  @name = name
  @@all << self
end

def add_song (song)
  song.artist = self
end

def songs
  Song.all.select { |song| song.artist == self}
end


end
