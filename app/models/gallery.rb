class Gallery

  attr_reader :name, :city

  @@all = []

  ########### CLASS METHODS ###########
  def self.all
    @@all
  end

  ########### INSTANCE METHODS ###########
  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    self.paintings.map{|painting| painting.artist}.uniq
  end

  def artist_names
    self.artists.map{|artist| artist.name}
  end

  def most_expensive_painting
    self.paintings.max do |a, b|
      a.price <=> b.price
    end
  end

end #end of Gallery class
