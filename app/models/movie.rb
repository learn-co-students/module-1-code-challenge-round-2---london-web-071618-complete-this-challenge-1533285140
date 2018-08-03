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

  def average_rating
    arr_of_ratings = queue_items.map {|queue_item| queue_item.rating}
    ave_rating = arr_of_ratings.inject(:+)/(arr_of_ratings.count).to_f
  end

  def self.highest_rated
    Movie.all.map {|movie| movie.average_rating}.max
  end
end
