#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Tache6 < UrRobot
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

  def diag_right_six
    diagonal_right
    diagonal_right
    diagonal_right
    diagonal_right
    diagonal_right
    diagonal_right
  end

  def tache64b
    turn_around
    move_thrice
    turn_right
    move_thrice
    move_twice
    pick_beeper
    move
    pick_beeper
    turn_right
    move
    pick_beeper
    turn_around
    move
    turn_left
    move_thrice
    move_thrice
    turn_right
    move_twice
    move_twice
    turn_left
    move_twice
    turn_left
    move_thrice
    turn_left
    move
    pick_beeper
    turn_around
    diag_right_six
    move_twice
    turn_right
    move
    turn_right
    move
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    turn_around
  end

end 


