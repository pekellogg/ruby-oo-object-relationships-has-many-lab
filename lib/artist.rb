class Artist

    attr_accessor :name

    def self.song_count
        Song.all.size
    end

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.find_all{|song|song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

end