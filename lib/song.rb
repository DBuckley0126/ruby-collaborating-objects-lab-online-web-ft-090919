class Song

@@all = []

def self.all
  @@all
end

def self.new_by_filename (file)
  name, artist = file.split(" - ")
  var = self.new(name)
  var.artist = Artist.find_or_create_by_name(artist)
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
