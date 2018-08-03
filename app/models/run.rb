require_relative './queue_item.rb'
require_relative './movie.rb'
require_relative './viewer.rb'
require 'pry'

karla = Viewer.new("karla")
bob = Viewer.new("bob")
charles = Viewer.new("charles")

clue = Movie.new("clueless")
toy = Movie.new("toy story")
up = Movie.new("up")
wow = Movie.new("wow")

q_1 = QueueItem.new(karla, toy, 5)
q_2 = QueueItem.new(karla, up, 5)
q_3 = QueueItem.new(bob, clue, 4)
q_4 = QueueItem.new(charles, toy, 3)

binding.pry
