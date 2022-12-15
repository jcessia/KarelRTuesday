#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Quiz8aq2 < UrRobot
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

def chemine

    move_twice
    diagonal_right
    move
    pick_beeper
    pick_beeper
    turn_right
    move
    pick_beeper
    pick_beeper
    turn_around
    move
    turn_left
    move_twice
    diagonal_right
    move

end

def sortie

    turn_right
    move_thrice
    turn_right

end

def allbeep

    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
end

def projectgrinch

    chemine
    sortie
    chemine
    sortie
    chemine
    sortie
    move_thrice
    move_thrice
    turn_right
    move_thrice
    move_thrice
    move_thrice
    turn_left
    chemine
    sortie
    chemine
    sortie
    chemine
    turn_right
    move
    turn_right
    move_thrice
    turn_left
    move
    turn_right
    move_twice
    allbeep
    turn_around
    move

end



end


