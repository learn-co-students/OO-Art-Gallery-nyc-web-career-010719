class Artist

# --Class----------------------------------------------

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def self.total_experience
    total_experience = 0
    @@all.each {|artist| total_experience += artist.years_experience}
    total_experience
  end

  def self.most_prolific
    ppy_hash = {}
    @@all.each {|artist| ppy_hash[artist] = (artist.paintings.count/artist.years_experience.to_f)}
    sorted_ppy_hash = ppy_hash.sort_by {|artist,ppy| ppy}
    sorted_ppy_hash[0][0]
  end

# --Instance-------------------------------------------

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    city_array = self.galleries.map {|gallery| gallery.city}
    city_array.uniq
  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,gallery,self)
  end

end
