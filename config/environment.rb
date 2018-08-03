require 'bundler/setup'
Bundler.require
require_rel '../app'
require "pry"


king = Movie.new("King")
dream = Movie.new("Dream")
peace = Movie.new("Peace")

jason = Viewer.new("Jason")
sarah = Viewer.new("Sarah")


jason.add_movie_to_queue(king)
jason.add_movie_to_queue(dream)
jason.add_movie_to_queue(peace)

sarah.add_movie_to_queue(dream)
sarah.add_movie_to_queue(peace)

sarah.rate_movie(dream, 5)
jason.rate_movie(dream, 4)

binding.pry
0
