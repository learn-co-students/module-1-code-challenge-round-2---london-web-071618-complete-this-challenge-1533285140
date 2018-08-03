class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|queue_item| queue_item.viewer == self}
  end

  def queue_movies
    queue_items.map {|queue_item| queue_item.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  # def rate_movie(movie, rating)
  #   #if the movie exists in the viewer's queue, dont add it
  #   #if not, created it:
  #   QueueItem.all.select {|queue_item| queue_item.viewer == self}
  # end




end
