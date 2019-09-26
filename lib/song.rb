class Song

@@all = []

def self.all
  @@all
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
