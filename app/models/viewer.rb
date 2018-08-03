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
    QueueItem.all.select {|queueitem| queueitem.viewer == self}
  end

  def queue_movies
    queue_items.map {|queue| queue.movie}
  end

  def add_movie_to_queue(movie, rating)
    movie = QueueItem.new(movie, self, rating)
  end

  def rate_movie(movie, rating)
    if QueueItem.movie == movie

      movie_rating = QueueItem.new(movie, self, rating)

  end

end


#+ `Viewer#rate_movie(movie, rating)`
#  + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.
