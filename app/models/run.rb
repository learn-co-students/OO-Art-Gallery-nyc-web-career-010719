require 'pry'

require_relative './artist.rb'
require_relative './gallery.rb'
require_relative './painting.rb'

a1 = Artist.new("Picasso", 25)
g1 = Gallery.new("Best Gallery", "Paris")
p1 = Painting.new("Painting 1", 50, a1, g1)

binding.pry
