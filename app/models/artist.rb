class Artist

  attr_reader :name, :years_experience

  @@all = []

  ########### CLASS METHODS ###########
  def self.all
    @@all
  end

  def self.total_experience
    #Returns an integer that is the total years of experience of all artists
    self.all.map{|artist| artist.years_experience}.reduce(:+)
  end


  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.count.to_f / artist.years_experience.to_f
    end
  end


  ########### INSTANCE METHODS ###########
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.map{|gallery| gallery.city}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end #end of Artist class
