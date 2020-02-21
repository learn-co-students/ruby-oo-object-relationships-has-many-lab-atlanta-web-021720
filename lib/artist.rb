require 'pry'
class Artist
    attr_accessor :name
    
    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self    
    end

    def artist_name
        artist.name if artist
    end

    def add_song_by_name(song_name)
        # binding.pry
        @song = Song.new(song_name)

        self.add_song(@song)

        # binding.pry
    end

    def self.song_count
        Song.all.count
    end

end 

