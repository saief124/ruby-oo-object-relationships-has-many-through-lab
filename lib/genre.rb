require 'pry'
require_relative './song.rb'

class Genre
    attr_accessor :name, :genre
    attr_reader :artist
    @@all=[]

    def initialize (name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|s| s.genre == self}
    end

    def artists
        self.songs.collect {|g| g.artist}
    end

end
