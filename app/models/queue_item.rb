class QueueItem

  ALL = []

  attr_accessor :movie, :viewer, :rating

  def initialize(movie, viewer, rating=nil)
    @movie = movie
    @viewer = viewer
    @rating = rating
    ALL << self
  end

  def self.all
    ALL
  end

end
