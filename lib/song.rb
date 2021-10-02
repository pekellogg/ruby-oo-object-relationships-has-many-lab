require_relative "../lib/artist.rb"
require 'pry'

class Song

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        self.save
    end

    def save
        self.class.all << self
    end

    def artist_name
        self.artist.name if self.artist
    end

end