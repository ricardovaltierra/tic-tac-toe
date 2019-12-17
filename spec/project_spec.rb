require "./lib/game_logic.rb"

game = Game.new
game.play

RSpec.describe Player do
  let(:game) { Game.new }

  # #name ------------------------------------------------------------------------ #
  describe "#name" do
    it "player name should be a string" do
      expect(player.name).to be_an String
    end
  end

  # #team ------------------------------------------------------------------------ #
  describe "#team" do
    it "team name should be X or O" do
      expect(player.name = "not").to be_an String
    end
  end

  ["X","O"]

end
