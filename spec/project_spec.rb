require "./bin/main.rb"
require "./lib/game_logic.rb"



# Board --------------------------------------------------------------------- #
RSpec.describe Board do
  let(:board) { Board.new }

  describe "#initialize" do
    it "initialize empty board to 9 - items" do
      expect(board.board).to eql( ["-", "-", "-", "-", "-", "-", "-", "-" ,"-"] )
    end

    it "initialize empty board diferent from 9 - items" do
      expect(board.board).not_to eql( [" ", " ", " ", " ", " ", " ", " ", " " ," "] )
    end
  end

  describe "#win_positions" do
    it "boad win positions have to be one of thoese diagonals or lines" do
      expect(board.win_positions[3]).to eql( [0, 3, 6] )
    end

    it "boad win positions can not be one of thoese diagonals or lines" do
      expect(board.win_positions[3]).not_to eql( [1, 2, 3] )
    end
  end

  #describe "#move_valid?" do
    #let(:board_test) { Board.new }
    #board_test[0..8] = ["-", "-", "X", "-", "-", "-", "-", "-" ,"-"]

    #it "initialize empty board to 9 - items" do
    #  expect(board_test.move_valid?(1)).to eql(true)
    #end  
  #end
  

end
