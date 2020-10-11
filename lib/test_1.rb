require_relative './artist.rb'
require_relative './genre.rb'
require_relative './song.rb'
require 'pry'

# Artists
madonna= Artist.new("Madonna")
michael_jackson= Artist.new("Michael Jackson")
metallica= Artist.new("Metallica")
linkin_park= Artist.new("Linkin Park")

# Genre
rock= Genre.new("Rock")
pop= Genre.new("Pop")
heavy_metal= Genre.new("Heavy Metal")

# Songs
enter_sandman= Song.new("Enter Sandman", "Metallica", "Heavy Metal")
thriller= Song.new("Thriller", "Michael Jackson", "Pop")
crawling= Song.new("Crawling", "Linkin Park", "Rock")
fade_to_black= Song.new("Fade to black", "Metallica", "Heavy Metal")
astronomy= Song.new("Astronomy", "Metallica", "Heavy Metal")
doesnt_matter= Song.new("In the end", "Linkin Park", "Rock")
beat_it= Song.new(" Beat It", "Michael Jackson", "Pop")


