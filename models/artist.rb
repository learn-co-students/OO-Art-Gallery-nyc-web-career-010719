
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

  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end

  def self.most_prolific
    most_prolific = 0
    most_prolific_artist= nil
    @@all.each do |a|
      total = 0
      a.paintings.map do |p|
        total += p.price
        prolific = total/a.years_experience
        if prolific > most_prolific
          most_prolific = prolific
          most_prolific_artist = a
        end
      end
    end
    return most_prolific_artist

  end

  def self.total_experience
    total = 0
    @@all.each do |a|
      total += a.years_experience
    end
    return total
  end
  def cities
    galleries.uniq

    # binding.pry
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

end
