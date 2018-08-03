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
    QueueItem.all.select {|items| items.viewer == self}
  end

  def queue_movies
    queue_items.map {|items| items.movie.title}
  end

  def add_movie_to_queue(movie)
    new_item = QueueItem.new(self, movie, rating=nil)
  end

  def rate_movie(movie, rating)
    selected_movie = queue_items.find {|items| items.movie == movie}
    selected_movie.rating = rating

    #build if condition to force user input of rating between 1 and 5 if you have time
  end


end
