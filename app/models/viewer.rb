#CHALLENGE - Only one liners for all class and instance methods.
class Viewer #< Super
  attr_accessor :first_name, :last_name
  ALL = []

  def initialize(name)
    #super
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.find {|viewer| viewer.full_name == name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def create_rating(score, movie)
    #TODO: flesh this out once rating class is built
    #done
    Rating.new(score, self, movie)
  end

  #NOT REQUIRED
  def ratings
    Rating.all.select {|rating| rating.viewer == self}
  end

  def movies
    self.ratings.collect {|rating| rating.movie}.uniq
  end

end
