class Song

attr_accessor :name

def initialize (name)
  @name = name
end

def artist= (artist_obj)
  @artist = artist_obj
end
end
