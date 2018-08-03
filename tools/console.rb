require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


movie_1 = Movie.new("Movie 1")
movie_2 = Movie.new("Movie 2")
ali = Viewer.new("Ali")
sarah = Viewer.new("Sarah")
first = QueueItem.new(movie_1, ali, 3)
second = QueueItem.new(movie_2, ali, 4)
third = QueueItem.new(movie_2, sarah, 5)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
