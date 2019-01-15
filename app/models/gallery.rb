class Gallery

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    Painting.all.select do |paintings|
      paintings.gallery == self
    end
  end

  def artists
    paintings.map do |my_paintings|
      my_paintings.artist
    end
  end

  def artist_names
    paintings.map do |my_paintings|
      my_paintings.artist.name
    end
  end

  def most_expensive_painting
    self.paintings.max_by do |paintings|
      paintings.price
    end
  end

end #end of gallery class
