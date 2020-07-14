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

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def cities
    cities = []
    galleries.select do |gallery|
      cities << gallery.city
    end
    cities.uniq
  end

  def self.total_experience
    sum = 0
    self.all.inject(0){|sum,x| sum + x.years_experience}
  end

  def self.most_prolific
    hash= Hash.new(0)
    Painting.all.each do |painting|
      hash[painting.artist] += 1
    end
    hash.max_by {|key, val| val}
  end

end
