require_relative '../config/environment.rb'


a1= Artist.new('Bob Ross',50)
a2 = Artist.new('Van Go',100)
a3 = Artist.new('Brian',5)
a4 = Artist.new('Bob',25)
a5 = Artist.new('Mike Angelo',15)

g2 = Gallery.new('Basic Gallery','Brooklyn')

a1.create_painting('Dope Painting',10,'Stupid Gallery')
a1.create_painting('Awesome Sauce Painting',10,'Stupid Gallery')
a1.create_painting('Shiny Painting',10,'Stupid Gallery')

a2.create_painting('Funky Painting',50,'Stupid Gallery')
a2.create_painting('Monkey Painting',100,'Fancy Gallery')

a3.create_painting('Food Painting',100,'Fancy Gallery')
a3.create_painting('Car Painting',100,'Fancy Gallery')

g1 = Gallery.new('SuperFancyArt Place Gallery','Brooklyn')

a3.create_painting('Computer Painting',100,g1)
a3.create_painting('TV Painting',10,'Stupid Gallery')

a4.create_painting('Cheap Painting',10,'Fancy Gallery')
a4.create_painting('Expensive Painting',1000,g1)

a5.create_painting('Painting Painting',10,g2)




binding.pry

puts "Bob Ross rules."
