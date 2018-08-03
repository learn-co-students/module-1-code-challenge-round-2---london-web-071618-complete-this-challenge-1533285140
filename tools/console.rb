require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



#movies
movie1 = Movie.new('movie1')
movie2 = Movie.new('movie3')
movie3 = Movie.new('movie3')
movie4 = Movie.new('movie4')

#viewers
viewer1 = Viewer.new('viewer1')
viewer2 = Viewer.new('viewer2')
viewer3 = Viewer.new('viewer3')

#queue_items
queue_item1 = QueueItem.new(movie1, viewer1, 5)
queue_item2 = QueueItem.new(movie2, viewer2, 4)
queue_item3 = QueueItem.new(movie3, viewer3, 3)
queue_item4 = QueueItem.new(movie4, viewer1, 5)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
