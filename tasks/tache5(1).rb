#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "bowling"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()

  karel = Bowling.new(1, 5, Robota::NORTH, 10)
  karel.mettre_quilles
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