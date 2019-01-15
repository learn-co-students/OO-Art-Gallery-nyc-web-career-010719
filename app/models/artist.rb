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
    Painting.all.select {|art| art.artist == self}
  end

  def galleries
    paintings.map {|venue| venue.gallary.name}.uniq
  end

  def cities
    paintings.map {|venue| venue.gallary.city}.uniq
  end

  def create_painting(title,price,gallary)
    Painting.new(title,price,self,gallary)
  end

  def self.total_experience
    self.all.inject(0) {|sum,exp| sum + exp.years_experience}
  end

  def self.most_prolific
    self.all.max_by {|exp| exp.years_experience}
  end

end
