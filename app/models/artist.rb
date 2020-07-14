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

  def self.total_experience
    total_experience = 0
    self.all.each do|artist|
      total_experience += artist.years_experience
    end
    total_experience
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end
  end

  def paintings
    Painting.all.select do|painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do|painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do|gallery|
      gallery.city
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end #end of artist class
