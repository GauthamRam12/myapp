require_relative 'calculator' # Use require_relative for local files

RSpec.describe "Calculator" do
  describe "#add" do
    it "adds two numbers" do
      expect(add(2, 3)).to eq(5)
    end
  end
end