require_relative '../lib/my_file'
RSpec.describe MyFile do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(MyFile.add("")).to eq(0)
    end
    it "returns number for single input" do
      expect(MyFile.add("1")).to eq(1)
    end
    it "returns the sum of two numbers separated by a comma" do
      expect(MyFile.add("1,2")).to eq(3)
    end
  end
end