class Super#ran into a problem and couldn't get this implemented in time
#want to be able to correctly answer all deliverables so this would be implemented
#at a later date because it is not necessary for the program to still be functional

#this issue i'm encountering is if I set the constant in here, then when I call something
#like movie.all, it will return to me every object that has been instantiated, and just all the movies
#it has something to do with scope, because ALL should exist for each class,
#not one ALL constant that stores the instances from every class

  def initialize()
    ALL << self
  end

  def self.all
    ALL
  end

end
