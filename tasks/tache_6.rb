#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Tache6 < UrRobot
  include Turner

 def initialize (street, avenue, direction, beepers)
    super(street, avenue,NORTH, beepers)
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

def put5_move4
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
end

def movesand
    put_beeper
    move
    move
    put_beeper
end

def hletter
    put5_move4
    turn_around
    diagonal_right
    move
    put_beeper
    turn_right
    move
    put_beeper
    turn_left
    move
    move
    turn_right
    move
    turn_right
    put5_move4
end

def Lletter
    put5_move4
    turn_left
    move
    put_beeper
    move
    put_beeper
end

def eletter
    Lletter
    turn_left
    move_twice
    movesand
    turn_left
    move
    turn_left
    movesand
end

def oletter
    Lletter
    turn_left
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_left
    move
    put_beeper
end


end


