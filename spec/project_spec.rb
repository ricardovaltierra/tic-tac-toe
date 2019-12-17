require "./bin/main.rb"
require "./lib/game_logic.rb"



# Player --------------------------------------------------------------------- #
RSpec.describe UserInterface do
  let(:ui) { UserInterface.new }

  describe "#input_valid?" do
    it "input_valid shold be a value between 1 and 9, and not be taken as a position already" do
      expect(ui.input_valid?("qwe")).to eql(false)
    end
  end

end
