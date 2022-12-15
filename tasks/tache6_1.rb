#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "tache_6"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
  world.read_world("../worlds/Tache6_1")
  karel = Tache_6.new(4, 3 Robota::EAST, 5)
end


if __FILE__ == $0
  if $graphical
     screen = window(12, 1000) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end