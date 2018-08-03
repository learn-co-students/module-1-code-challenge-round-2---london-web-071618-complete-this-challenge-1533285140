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
arr =QueueItem.all.select{|queue_item| queue_item.movie == self}
# arr.map{|queue_item| queue_item.}

end

def viewers
arr =QueueItem.all.select{|queue_item| queue_item.movie == self}
arr.map {|queue_item| queue_item.viewer}
end

def average_rating
# arr =QueueItem.all.select{|queue_item| queue_item.movie == self}

arr = queue_items.map{|queue_item| queue_item.rating}
arr.inject(0){|sum,e| sum+e}/arr.length
end
 def highest_rated
   arr = queue_items.map{|queue_item| queue_item.rating}
   arr.sort.last
 end
end
