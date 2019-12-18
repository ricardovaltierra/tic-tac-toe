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
    # it "board win positions have to be one of thoese diagonals or lines" do
    #   expect(board.win_positions[3]).to eql( [0, 3, 6] )
    # end

    # it "boad win positions can not be one of thoese diagonals or lines" do
    #   expect(board.win_positions[3]).not_to eql( [1, 2, 3] )
    # end

    it "the array given must match with one of the winner arrays on the program" do
      expect(winnerDefinition( [0, 1, 6] )).to eql(false) # -> not a winner row
      expect(winnerDefinition( [1, 4, 7] )).to eql(true) # -> a winner row
    end
  end

end

def winnerDefinition(arr)
  brd = Board.new  
  return false unless brd.win_positions.any?(arr)
  true
end

# UserInterface --------------------------------------------------------------------- #
RSpec.describe UserInterface do
  let(:ui) { UserInterface.new }

  describe "#input_valid?" do
    it "the value given should be between numbers 1 and 9 with no other character or space/tab. \n also the number must not be taken as a position already" do
      expect(ui.input_valid?("qwe")).to eql(false)
    end
  end

  # describe "#get_names" do
  #   it "the value given must include letters"
  # end
 
end
