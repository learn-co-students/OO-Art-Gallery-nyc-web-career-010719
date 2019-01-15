require_relative '../config/environment.rb'

katie = Artist.new("Katie",30)
kevin = Artist.new("Kevin", 30)
david = Artist.new("David", 1)
liz = Artist.new("Liz", 30)

gallery1 = Gallery.new("Gallery1", "NYC")
gallery2 = Gallery.new("Gallery2", "Boston")

p1 = Painting.new("P1",100,katie,gallery1)
p2 = Painting.new("P2",200,kevin,gallery2)
p3 = Painting.new("P3",200,katie,gallery2)
p4 = Painting.new("P4",100,katie,gallery1)
p5 = Painting.new("P5",500,david,gallery1)
p6 = Painting.new("P6",100,kevin,gallery1)

binding.pry

puts "Bob Ross rules."
