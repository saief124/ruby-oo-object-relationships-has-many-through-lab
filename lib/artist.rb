require_relative './song.rb'
require 'pry'

class Artist
    attr_accessor :name, :artist
    attr_reader :genre
    @@all=[]

    def initialize (name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        a_song=Song.new(name, self, genre) #new instance of a song
    end

    def songs
            Song.all.select do |s| 
            s.artist == self
        end
    end

    def genres
        self.songs.collect {|g| g.genre}
    end

end