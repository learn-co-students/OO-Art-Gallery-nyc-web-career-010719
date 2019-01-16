class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    price_array = self.all.map do | painting |
      painting.price
    end
    sum = 0
    total = price_array.each do | price |
      sum += price
    end
    sum
  end

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end
end
