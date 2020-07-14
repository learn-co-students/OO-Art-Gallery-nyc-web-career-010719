require_relative '../config/environment.rb'

a1 = Artist.new("Sarah",1)
a2 = Artist.new("Elbert",3)
a3 = Artist.new("Janet",5)
a4 = Artist.new("Donn",7)

g1 = Gallery.new("Art Basel","Miami")
g2 = Gallery.new("MOMA","NYC")
g3 = Gallery.new("The Art Institute of Chicago","Chicago")
g4 = Gallery.new("The Guggenheim","NYC")
g5 = Gallery.new("TrickEye Museum","Singapore")

p1 = Painting.new("Name1", 100, g1, a2)
p2 = Painting.new("Name2", 200, g1, a2)
p3 = Painting.new("Name3", 15000, g2, a1)
p4 = Painting.new("Name4", 20000, g4, a1)
p5 = Painting.new("Name5", 15000, g3, a1)
p6 = Painting.new("Name6", 5000, g5, a3)
p6 = Painting.new("Name7", 3000, g5, a4)


binding.pry

puts "Bob Ross rules."
