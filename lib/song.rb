class Song

@@all = []

def self.all
  @@all
end

def self.new_by_filename (file)
  artist, name = file.split(" - ")
  self.new(name)
end


attr_accessor :name
attr_reader :artist

def initialize (name)
  @name = name
  @@all << self
end

def artist= (artist_obj)
  @artist = artist_obj
end



end
