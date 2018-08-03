class Movie
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|queue| queue.movie == self}
  end

  def viewers
    queue_items.map {|movie| movie.viewer}
  end

  def average_rating
    average = QueueItem.all.map {|queue| queue.rating}
    average.inject(0) {|sum, el| sum+el} / average.size
  end

  def self.highest_rated
    all.map {|movie| movie.average_rating}.max
  end
end
