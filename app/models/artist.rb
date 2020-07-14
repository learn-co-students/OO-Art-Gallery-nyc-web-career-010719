class Artist

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def self.total_experience
    @@all.inject(0){|sum,a| sum + a.years_experience}
  end

  def self.most_prolific
    #number of paintings/years of total_experience
    #return artist instance with the highest
    array = @@all.sort_by do |artist|
      artist.paintings.length/artist.years_experience.to_f
    end
    array.reverse!
    array[0]
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings
    Painting.all.select do |p|
      p.artist == self
    end
  end

  def galleries
    paintings.map do |p|
      p.gallery
    end
  end

  def cities
    cities = galleries.map do |g|
      g.city
    end
    cities.uniq
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
