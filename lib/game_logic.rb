#!/usr/bin/env ruby

class Player

  def initialize(name, team)
   @name = name
   @team = team
  end

  def name
    @name
  end

  def team
    @team
  end

  def name=(name) 
    @name = name 
  end

end

class Board
  $board = ['1','2','3','4','5','6','7','8','9']

  def board
    $board
  end

  def display_board
    puts " #{$board[0]} | #{$board[1]} | #{$board[2]} "
    puts "---+---+---"
    puts " #{$board[3]} | #{$board[4]} | #{$board[5]} "
    puts "---+---+---"
    puts " #{$board[6]} | #{$board[7]} | #{$board[8]} "
    puts "\n"    
  end

end