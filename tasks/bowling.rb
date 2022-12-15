#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Bowling < UrRobot
  include Turner

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

  def diamond
    put_beeper
    diagonal_right
    put_beeper
    diagonal_right
    put_beeper
    diagonal_right
    put_beeper
    diagonal_left
  end


  def mettre_quilles
    #actions
    move
    put_beeper
    diagonal_left
    put_beeper
    diagonal_left
    put_beeper
    diagonal_left
    put_beeper
    turn_right
    move
    move
    put_beeper
    diagonal_right
    put_beeper
    diagonal_right
    put_beeper
    turn_left
    diagonal_right
    put_beeper
    diagonal_right
    put_beeper
    turn_left
    move
    move
    put_beeper
    move
    turn_right
    move
    turn_right
    turn_right
    turn_off


  end

  def mettre_quilles_2
    move
    diamond
    turn_left
    turn_left
    diamond
    turn_right
    move
    turn_off
  end

end

def task_6_1
UrRobot.new(4,3,EAST,5)
