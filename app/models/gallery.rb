class Gallery

  attr_reader :name, :city

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select do | painting |
      painting.gallery == self
    end
  end

  def artists
    artist_array = self.paintings.map do | painting |
      painting.artist
    end
    artist_array.uniq
  end

  def artist_names
    name_array = self.artists.map do | artist |
      artist.name
    end
    name_array.uniq
  end

  def most_expensive_painting
    price_array = self.paintings.map do | painting |
      painting.price
    end
    price_array.sort[-1]
  end
end
