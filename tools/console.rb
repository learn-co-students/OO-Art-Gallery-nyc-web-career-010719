require_relative '../config/environment.rb'

a1 = Artist.new("Steve", 9)
a2 = Artist.new("Bob", 9)
a3 = Artist.new("Anne", 9)
a4 = Artist.new("Karen", 9)

g1 = Gallery.new("Art Place", "New York")
g2 = Gallery.new("Art Place 1", "Brooklyn")
g3 = Gallery.new("Art Place 2", "Madison")
g4 = Gallery.new("Art Place 3", "Charleston")

a1.create_painting("art yo", 50, g1)
a2.create_painting("art yo", 50, g1)
a1.create_painting("paint", 1000, g1)
a1.create_painting("blah", 100, g4)
a2.create_painting("sick", 75, g2)
a3.create_painting("picasso", 25, g3)

Painting.total_price
Artist.total_experience
Artist.most_prolific
g1.artist_names
g1.most_expensive_painting

binding.pry

puts "Bob Ross rules."
