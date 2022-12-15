#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "quiz8aq2"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
  world.read_world("../worlds/grinch.kwld")
  karel = Quiz8aq2.new(12, 4, Robota::SOUTH, 24)
  karel.projectgrinch
 
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