require_relative '../config/environment.rb'

a1 = Artist.new("emily", 4)
a2 = Artist.new("masha", 5)
a3 = Artist.new("quinn", 8)


g1 = Gallery.new("david zwirner", "NYC")
g2 = Gallery.new("MoMA", "NYC")
g3 = Gallery.new("LACMA", "LA")


p1 = Painting.new("the scream", 75, a1, g2)
p2 = Painting.new("dots", 7, a1, g1)
p3 = Painting.new("street lights", 1000, a2, g3)
p4 = Painting.new("2dots", 17, a1, g1)


binding.pry

puts "Bob Ross rules."
