class Painting

  attr_reader :title, :price, :artist, :gallary

  @@all = []

  def initialize(title, price, artist, gallary)
    @title = title
    @price = price
    @artist = artist
    @gallary = gallary
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.inject(0) {|sum,price| sum + price.price}
  end
end
