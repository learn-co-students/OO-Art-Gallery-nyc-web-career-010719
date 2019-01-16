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

  def self.total_experience
    exp_array = self.all.map do | artist |
      artist.years_experience
    end
    sum = 0
    exp_array.each do | exp |
      sum += exp
    end
    sum
  end

  def self.most_prolific
    paintings_hash = Hash.new(0)
    @@all.each do | artist |
      paintings_hash[artist] = artist.paintings.count.to_f
    end

    experience_hash = Hash.new(0)
    @@all.each do | artist |
      experience_hash[artist] = artist.years_experience.to_f
    end

    prolific_hash = Hash.new(0)
    @@all.each do | artist |
      prolific_hash[artist] = paintings_hash[artist] / experience_hash[artist]
    end

    result_array = prolific_hash.max_by { | k, v | v }
    result_array[0]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

  def paintings
    Painting.all.select do | painting |
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do | painting |
      painting.gallery
    end
  end

  def cities
    city_array = self.galleries.map do | gallery |
      gallery.city
    end
    city_array.uniq
  end
end
