require_relative '../config/environment.rb'

a1 = Artist.new("Leonardo",25)
a2 = Artist.new("Michelangelo", 30)
a3 = Artist.new("Raphael", 45)
a4 = Artist.new("Donatello", 80)

g1 = Gallery.new("Palace of Fine Arts", "San Fransico")
g2 = Gallery.new("Versailles", "Paris")

p1 = Painting.new("P1",500,a1,g1)
p2 = Painting.new("P2",400,a2,g2)
p3 = Painting.new("P3",300,a1,g2)
p4 = Painting.new("P4",200,a1,g1)
p5 = Painting.new("P5",100,a3,g1)
p6 = Painting.new("P6",1000,a4,g1)


binding.pry

puts "Bob Ross rules."
