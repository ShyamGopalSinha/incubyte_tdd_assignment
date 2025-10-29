require_relative '../lib/my_file'
RSpec.describe MyFile do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(MyFile.add("")).to eq(0)
    end
end
end