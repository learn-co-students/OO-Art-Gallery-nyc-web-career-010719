class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artist_arr = []
    artists.select do |artist|
      artist_arr << artist.name
    end
    artist_arr.uniq
  end

  def most_expensive_painting
    price_arr = self.paintings.sort_by {|painting| painting.price}
    price_arr.last
  end

end
