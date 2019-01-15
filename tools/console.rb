require_relative '../config/environment.rb'

#artists
van_gogh = Artist.new("Van Gogh", 60)
rothco = Artist.new("Rothco", 40)

#galleries
moma = Gallery.new("MOMA", "Uptown NYC")
whitney = Gallery.new("Whitney", "Dtwn NYC")

#paintings
p1 = Painting.new("Starry Night", 5000000, moma, van_gogh)
p2 = Painting.new("Weird and Abstract", 6000, whitney, rothco)
p3 = Painting.new("Chopped Ear", 3000, whitney, van_gogh)

binding.pry

puts "Bob Ross rules."
