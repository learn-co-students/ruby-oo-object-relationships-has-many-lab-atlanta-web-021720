
class Song
   attr_accessor :artist, :name
    @@all = []
    def initialize(name)
        # @artist = artist
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
      #   self.artist.name if artist
    if artist != nil
        artist.name
    else 
    nil
    end
       # binding.pry
    end


end

