class Artist

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def self.total_expirience
    i = 0
    @@all.each do |artist|
      i += artist.years_experience
    end
    i
  end

  def self.most_prolific
    @@all.max_by do |artist|
      artist.paintings.length
    end
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end


  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |my_painting|
      my_painting.gallery
    end
  end

  def cities
    paintings.map do |my_painting|
      my_painting.gallery.city
    end
  end

  def create_painting(title, price, gallery) #(title, price, artist, gallery)
    Painting.new(title, price, self, gallery)
  end






end #end of Artist class
