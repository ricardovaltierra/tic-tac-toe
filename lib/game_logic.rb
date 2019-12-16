#!/usr/bin/env ruby

require '../lib/game_logic.rb'

# UserInterface --------------------------------------------------------------------------- #
class UserInterface
  attr_reader :user_interface

  def initialize
    @user_interface = user_interface
  end

  def instructions
    puts "game instructions: "
    puts "use 1-9 keys to make your turn.\n\n"
    puts "1|2|3"
    puts "4|5|6"
    puts "7|8|9"
  end

  def get_names(players)
    names = []
    players.each_with_index do |player, i|
      puts "\n\nplease enter the name of player #{i+1}:"
      name = gets.chomp.downcase
      while name == ""
        puts "invalid input. please enter a valid name:"
        name = gets.chomp.downcase
      end
      names << name
    end
    names
  end

end