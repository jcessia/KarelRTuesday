#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "tache_6a"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
  world.read_world("../worlds/Tache6_4a")
  karel = Tache6.new(2, 5, Robota::EAST, 4)
  karel.tache64b
end


if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end