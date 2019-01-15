class Artist

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  #Returns an array all the paintings by an artist
  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  #Returns an array of all the galleries that an artist has paintings in
  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  #Return an array of all cities that an artist has paintings in
  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  #Returns an integer that is the total years of experience of all artists
  def self.total_experience
    artist_experience = []
    self.all.select do |artist|
      artist_experience << artist.years_experience
    end
    artist_experience.inject(:+)
  end

  #Returns an instance of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
     self.all.max_by do |artist|
       artist.paintings.length / artist.years_experience
     end
  end

  #Given the arguments of title, price and gallery, creates a new painting belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
end #end of my Artist class
