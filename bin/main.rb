#!/usr/bin/env ruby

require '../lib/game_logic.rb'

def get_player_data

  puts "Hi Player 1, please type your full name: "
  player01_name = gets.chomp

  puts "Thank you, now please select the team you want to belong (X / O): "
  player01_team = gets.chomp.upcase
  player02_team = player01_team == 'X'   ? 'O' : 'X'

  puts "Hi Player 2, please type your full name: "
  player02_name = gets.chomp

end

get_player_data

# Creating an object of the class
  player01 = Player.new(player01_name, player01_team)
  player02 = Player.new(player02_name, player02_team)

puts player01.name
puts player01.team