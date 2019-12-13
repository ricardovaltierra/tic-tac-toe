
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

end

palyer01 = Player.new("ricardo", "X")
palyer02 = Player.new("firmo", "O")

#puts palyer01.name
puts palyer01.team