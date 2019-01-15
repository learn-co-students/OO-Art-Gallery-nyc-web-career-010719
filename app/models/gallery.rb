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

  #Returns an array of all paintings in a gallery
  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  #Returns an array of all artists that have a painting in a gallery
  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  #Returns an array of the names of all artists that have a painting in a gallery
  def artist_names
    artist_array = []
    artist_array << artists
  end

  #Returns an instance of the most expensive painting in a gallery
  def most_expensive_painting
    paintings.max_by do |painting|
      painting.price
    end
  end

end #end fo my Gallery class
