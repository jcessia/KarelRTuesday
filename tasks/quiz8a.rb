#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Quiz8a < UrRobot
  include Turner

 def initialize (street, avenue, direction, beepers)
    super(street, avenue,direction, beepers)
  end
  
  def diagonal_left
    turn_left
    move
    turn_right
    move
  end

  def diagonal_right
    turn_right
    move
    turn_left
    move
  end

def move_robot
    move
    move
    move
    move
    move
    put_beeper
end

def move_robot2
    pick_beeper
    move_robot
end

def turn_around
    turn_left
    turn_left
end

def move_twice
    move
    move
end

def move_thrice
    move
    move
    move
end


def put6move5
    put5_move4
    move
    put_beeper
end

def quiz8aq1
    move
    put_beeper
    move
    put_beeper
    turn_left
    move
    put_beeper
    turn_around
    diagonal_left
    put_beeper
    turn_around
    put6move5
    turn_right
    move
    turn_right
    put6move5
    turn_left
    move
    turn_left
    put6move5
    diagonal_left
    put_beeper
    turn_around
    move_twice
    move_robot
    turn_around
    diagonal_right
    turn_right
    move
    put_beeper
    move
    put_beeper
    turn_left
    diagonal_left
    put_beeper
    move

end

end


