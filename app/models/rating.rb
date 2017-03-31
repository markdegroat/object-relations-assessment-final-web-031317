#CHALLENGE - Only one liners for all class and instance methods.
class Rating #< Super
  attr_accessor :score, :viewer, :movie
  ALL = []

  #could make this a one liner but it honestly destroys readability
  #so we're going to leave this as is
  def initialize(score, viewer, movie)
    #super
    @score = score
    @viewer = viewer
    @movie = movie
    ALL << self
  end

  def self.all
    ALL
  end
end
