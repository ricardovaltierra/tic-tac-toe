require "./bin/main.rb"
require "./lib/game_logic.rb"

# Board --------------------------------------------------------------------- #
RSpec.describe Board do
  let(:board) { Board.new }

  # initialize
  describe "#initialize" do
    it "initialize empty board to 9 - items" do
      expect(board.board).to eql( ["-", "-", "-", "-", "-", "-", "-", "-" ,"-"] )
    end

    it "initialize empty board diferent from 9 - items" do
      expect(board.board).not_to eql( [" ", " ", " ", " ", " ", " ", " ", " " ," "] )
    end
  end

  # move_valid?
  describe "#move_valid?" do
    it "the array given must match with one of the winner arrays on the program" do
      expect(board.move_valid?(1)).to eql(true)
    end

    it "the array given must match with one of the winner arrays on the program" do
      expect(board.move_valid?(1)).to eql(true)
    end
  end
  
  # win_positions
  describe "#win_positions" do
    it "the array given must match with one of the winner arrays on the program" do
      expect(board.win_positions.any?( [0, 1, 6] )).to eql(false) # -> not a winner row
      expect(board.win_positions.any?( [1, 4, 7] )).to eql(true) # -> a winner row
    end
  end

end

# UserInterface --------------------------------------------------------------------- #
RSpec.describe UserInterface do
  let(:ui) { UserInterface.new }

  describe "#input_valid?" do
    it "the value given should be between numbers 1 and 9 with no other character or space/tab. \n also the number must not be taken as a position already" do
      expect(ui.input_valid?("qwe")).to eql(false)
    end
  end

  describe "#get_names" do
    it "the value given must include letters, not just numbers / special characters" do
      expect(gnValidation).to eql(true) # -> the expected value is true if the condition above is met, otherwise fails
    end
  end

  def gnValidation
    ui = UserInterface.new
    players = [Player.new, Player.new]
    names = []
    names = ui.get_names(players) # -> call to get_name    
    return true unless names.any? { |name| name == "" || !(name.match(/[a-z]/)) }
    false
  end
 
end
