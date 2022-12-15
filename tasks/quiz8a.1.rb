#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "quiz8a"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
  world.read_world("../worlds/Tache7_a")
  karel = Quiz8a.new(2, 2, Robota::EAST, 27)
  karel.quiz8aq1
 
end


if __FILE__ == $0
  if $graphical
     screen = window(21, 55) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end