
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

# Creating an object of the class 

def  get_player_data(player_number)

  puts "Hi Player #{player_number}, please type your full name: "
  player_name = gets.chomp

  puts "Thank you, now please the team you want to belong (X / O): "
  player_team = gets.chomp
  else
    if player_team == 'X'
  end

  player = Player.new(player_one_name, player_one_team)

  player

end

player_1 = get_player_data(1)
puts "Hi " + player_1.name + ", you're going to be player number one, and you selected the '"+ player_1.team + "' team"

player_2 = get_player_data(2)
puts "\nHi " + player_2.name + ", you're going to be player number one, and you selected the '"+ player_2.team + "' team"

$p2.team = $p1.team == 'X' ? 'O' : 'X' 