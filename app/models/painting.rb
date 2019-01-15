class Painting #this is my join class

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def self.all
    @@all
  end

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  #Returns an integer that is the total price of all paintings
  def self.total_price
    total = []
    self.all.select do |painting|
      total << painting.price
    end
    total.inject(:+)
  end

end #end of my Painting class
