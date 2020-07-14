require_relative '../config/environment.rb'



louvre_museum = Gallery.new("Louvre Museum", "NYC")

the_national_gallery = Gallery.new("The National Gallery", "Prague")

leonardo_da_vinci = Artist.new("Leonardo da Vinci", 100)

pablo_picasio = Artist.new("Pablo Picasio", 10)

mona_lisa = Painting.new("Mona Lisa", 1000000, leonardo_da_vinci, the_national_gallery)

self_portrait = Painting.new("Self Portrait", 600000000000007, pablo_picasio, the_national_gallery)









binding.pry

puts "Bob Ross rules."
