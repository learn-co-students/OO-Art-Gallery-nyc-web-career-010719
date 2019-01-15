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
    Painting.all.select do |p|
      p.gallery == self
    end

  end

  def artists
    paintings.map do |p|
      p.artist
    end
  end

  def artist_names
    artists.map do |a|
      a.name
    end
  end

  def most_expensive_painting
    paintings.find do |p|
      - p.price
    end
  end



end
