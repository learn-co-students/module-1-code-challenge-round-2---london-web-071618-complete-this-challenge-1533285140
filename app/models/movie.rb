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
    QueueItem.all.select {|items| items.movie == self}
  end

  def viewers
    QueueItem.all.map {|items| items.viewer }.uniq
  end

  def average_rating
    list_of_movie_ratings = queue_items.map {|movie| movie.rating}
    list_of_movie_ratings.inject(0) { |result, element| result + element }/list_of_movie_ratings.count.to_f
  end

end
