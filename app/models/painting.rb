class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  ########### CLASS METHODS ###########
  def self.all
    @@all
  end

  def self.total_price
    self.all.map{|painting| painting.price}.reduce(:+)
  end

  ########### INSTANCE METHODS ###########
  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

end #end of Painting class
