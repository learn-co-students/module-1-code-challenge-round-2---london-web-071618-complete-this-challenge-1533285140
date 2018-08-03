require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movies

big=Movie.new("Big")
albatros=Movie.new("Albatros")
digging = Movie.new("Digging")
sound= Movie.new("sound")


#viewer

dan = Viewer.new("Dan")
emily = Viewer.new("Emily")
scottie= Viewer.new("Scottie")
dennis = Viewer.new("Dennis")

#queue_items

item_1 = QueueItem.new(big, dan, 3)
item_2 = QueueItem.new(digging, dan, 2)
item_3 = QueueItem.new(sound, emily, 10)
item_4 = QueueItem.new(albatros, scottie, 8)

item_5 = QueueItem.new(albatros, emily, 9)
item_6 = QueueItem.new(sound, dennis, 6)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
