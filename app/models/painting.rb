class Painting

# --Class---------------------------------------------

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    total_price = 0
    @@all.each {|painting| total_price += painting.price}
    total_price
  end

# --Instance--------------------------------------------

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

end
