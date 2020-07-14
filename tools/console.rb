require_relative '../config/environment.rb'

a1 = Artist.new("a1", 10)
a2 = Artist.new("a2", 2)
a3 = Artist.new("a3", 3)
a4 = Artist.new("a4", 4)
a5 = Artist.new("a5", 5)
a6 = Artist.new("a6", 6)

g1 = Gallery.new("g1", "city1")
g2 = Gallery.new("g2", "city1")
g3 = Gallery.new("g3", "city1")
g4 = Gallery.new("g4", "city2")
g5 = Gallery.new("g5", "city2")
g6 = Gallery.new("g6", "city3")

p1 = Painting.new("p1", 10, g1, a1)
p2 = Painting.new("p2", 20, g2, a2)
p3 = Painting.new("p3", 30, g3, a3)
p4 = Painting.new("p4", 40, g4, a4)
p5 = Painting.new("p5", 50, g5, a5)
p6 = Painting.new("p6", 60, g6, a6)

Painting.total_price
Artist.total_experience
Artist.most_prolific

a6.create_painting("p6.1", 61, g1)
g1.most_expensive_painting
g1.artist_names

binding.pry

puts "Bob Ross rules."
