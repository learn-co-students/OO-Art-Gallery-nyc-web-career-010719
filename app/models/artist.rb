class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    artist_experience = self.all.map do |artist|
      artist.years_experience
    end
    artist_experience.inject(:+)
  end

  def total_paintings
    paintings.count
  end

  def self.most_prolific
    #returns artists
    #divide paintings by years_experience
    prolific_index = self.all.sort do |artist|
      artist.total_paintings.to_f / artist.years_experience.to_f
    end
    prolific_index.reverse[0]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end
