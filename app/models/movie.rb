#CHALLENGE - Only one liners for all class and instance methods.
class Movie #< Super
  attr_accessor :title
  ALL = []

  #could make this a one liner but it honestly destroys readability
  #so we're going to leave this as is
  def initialize(title)
    #super
    self.title = title
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_title(title)
    #ONE LINER WOO
    self.all.find {|movie| movie.title == title}
  end

  #NOT A DELIVERABLE BUT I HAD EXTRA TIME
  def self.find_movie_with_most_ratings
    # ratings.max_by do |rating|
    #   rating.score
    # end
    #ONE LINER REFACTOR WOO
    ratings.max_by(&:score)
  end


  def ratings
    Rating.all.select {|rating| rating.movie == self}
  end

  def viewers
    self.ratings.collect {|rating| rating.viewer}
  end

  def average_rating
    #TODO: there is definitely a method that does this for you, forgot what it's called, will refactor
    #after I have completed all deliverables
    # sum = 0
    # self.ratings.each do |rating|
    #   sum += rating.score
    # end
    # sum/ratings.length

    #REFACTORING USING INJECT
    #YAY, stealing the idea from lecture where we passed a float to inject
    #in order to avoid having to explicity cast the rating.score to a float
    #ONE LINER WOO
    self.ratings.inject(0.0) {|sum, rating| sum + rating.score} / self.ratings.length
  end





end
