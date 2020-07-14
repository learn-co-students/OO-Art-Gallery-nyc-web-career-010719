require 'pry'
require_relative '../config/environment.rb'

######### ARTIST INSTANCES #########
a1 = Artist.new("Artist 1", 3)
a2 = Artist.new("Artist 2", 4)
a3 = Artist.new("Artist 3", 5)
a4 = Artist.new("Artist 4", 1)

######### GALLERY INSTANCES #########
g1 = Gallery.new("Gallery 1", "NY")
g2 = Gallery.new("Gallery 2", "LA")

######### PAINTING INSTANCES #########
p1 = Painting.new("painting 1", 300, a1, g1)
p2 = Painting.new("painting 2", 500, a2, g2)
p3 = Painting.new("painting 3", 1000, a2, g1)
p4 = Painting.new("painting 4", 250, a3, g2)
p5 = Painting.new("painting 5", 250, a4, g1)
p6 = Painting.new("painting 6", 250, a4, g2)
p7 = Painting.new("painting 7", 250, a4, g1)



binding.pry

puts "Bob Ross rules."
