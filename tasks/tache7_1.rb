#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "tache_6"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
  world.read_world("../worlds/Tache7_a")
  karel = Tache6.new(7, 2, Robota::SOUTH, 12)
  karel2 = Tache6.new(7, 7, Robota::SOUTH, 11)
  karel3 = Tache6.new(7, 11, Robota::SOUTH, 7)
  karel4 = Tache6.new(7, 15, Robota::SOUTH, 7)
  karel5 = Tache6.new(7,19, Robota::SOUTH, 12)
  karel.hletter
  karel2.eletter
  karel3.Lletter
  karel4.Lletter
  karel5.oletter
end


if __FILE__ == $0
  if $graphical
     screen = window(21, 50) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end