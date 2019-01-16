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
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    #iterate through all the paintings in this GALLERY
    #choose the one that has the highest price

    paintings.max_by do |painting|
      painting.price
    end

  #     #returns artists
  #     #divide paintings by years_experience
  #   prolific_index = self.all.sort do |gallery|
  #     artist.total_paintings.to_f / artist.years_experience.to_f
  #   end
  #   prolific_index.reverse[0]
  end

end
