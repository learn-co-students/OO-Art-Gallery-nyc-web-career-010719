class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end


  def self.total_price
    sum = 0
    self.all.map do |painting|
      sum += painting.price
    end
    sum
  end
  #
  #
  # def self.total_price
  #   painting_prices.all.inject(:+)
  # end

end
