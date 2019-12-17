require "./bin/main.rb"
require "./lib/game_logic.rb"



# Player --------------------------------------------------------------------- #
RSpec.describe UserInterface do
  let(:ui) { ui.new }

  describe "#input_valid?" do
    it "input_valid shold be a value between 1 and 9" do
      expect(ui.input_valid?("1")).to eql(true)
    end
  end

end
