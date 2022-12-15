#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "tache_6a"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
  world.read_world("../worlds/Tache6_3")
  karel = Tache6.new(1, 1, Robota::NORTH, 1)
  karel2 = Tache6.new(6, 1, Robota::EAST, 0)
  karel3 = Tache6.new(6, 6, Robota::SOUTH, 0)
  karel4 = Tache6.new(1, 6, Robota::WEST, 0)
  karel.move_robot
  karel2.move_robot2
  karel3.move_robot2
  karel4.move_robot2

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