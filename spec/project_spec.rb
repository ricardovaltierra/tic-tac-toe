require "./bin/main.rb"
require "./lib/game_logic.rb"

# Board --------------------------------------------------------------------- #
RSpec.describe Board do
  let(:board) { Board.new }

  describe "#initialize" do
    it "initialize empty board to 9 - items" do
      expect(board.board).to eql( ["-", "-", "-", "-", "-", "-", "-", "-" ,"-"] )
    end
  end
end

# Player --------------------------------------------------------------------- #
RSpec.describe UserInterface do
  let(:ui) { UserInterface.new }

  describe "#input_valid?" do
    it "input_valid shold be a value between 1 and 9, and not be taken as a position already" do
      expect(ui.input_valid?("qwe")).to eql(false)
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
end
  #describe "#move_valid?" do
    #let(:board_test) { Board.new }
    #board_test[0..8] = ["-", "-", "X", "-", "-", "-", "-", "-" ,"-"]

    #it "initialize empty board to 9 - items" do
    #  expect(board_test.move_valid?(1)).to eql(true)
    #end  
  #end


