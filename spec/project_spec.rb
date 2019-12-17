require "./bin/main.rb"
require "./lib/game_logic.rb"



# Board --------------------------------------------------------------------- #
RSpec.describe Board do
  let(:board) { Board.new }

  describe "#initialize" do
    it "initialize empty board to 9 - items" do
      expect(board.board).to eql( ["-", "-", "-", "-", "-", "-", "-", "-" ,"-"] )
    end

    it "initialize empty board to 9 - items" do
      expect(board.board).not_to eql( [" ", " ", " ", " ", " ", " ", " ", " " ," "] )
    end
  end

end
