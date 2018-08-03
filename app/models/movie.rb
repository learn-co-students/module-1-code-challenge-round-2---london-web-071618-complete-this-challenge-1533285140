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
    QueueItem.all.select {|queue_item| queue_item.movie == self}
  end

  def viewers
    queue_items.map {|queue_item| queue_item.viewer}
  end

  def ratings
    queue_items.map {|queue_item| queue_item.rating}
  end

  def average_rating
    ratings.inject(0) {|sum, x| sum + x} / ratings.size.to_f
  end

  def self.highest_rated
    all_ratings = self.all.map {|movie| movie.average_rating}
    all_ratings.max
  end

end
