class Artist

    attr_accessor :song, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song|
            song.artist == self
        }
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        all_songs = []
        @@all.each { |artist_instance|
            artist_instance.songs.collect {|song|
                all_songs << song
            }
        }
        all_songs.count
    end

end