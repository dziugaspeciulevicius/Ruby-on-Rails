require 'rspec/autorun'
require_relative './rectangle.rb'

describe Rectangle do
  subject(:rectangle) {Rectangle.new}
  context "perimeter tests" do
    it "get perimeter of 6 & 8 = 28" do
      expect(subject.get_perimeter(6,8)).to eq(28)
    end
    it "get perimeter of 8 & 10 != 28" do
      expect(subject.get_perimeter(8, 10)).not_to eq(28)
    end
  end

  context "area tests"  do
    it "get area of 2 & 4 = 8" do
      expect(subject.get_area(2,4)).to eq(8)
      end
    it "get area of 2 & 9 != 8" do
      expect(subject.get_area(2,9)).not_to eq(8)
    end
  end

  context "diagonal length tests"  do
    it "get diagonal of 8 & 16 = 17.888" do
      expect(subject.get_diagonal_length(8,16)).to eq(17.88854381999832)
    end
    end

  context "coordinates tests"  do
    it "x coordingate to be 26" do
      expect(subject.get_coordinate_x(13,26)).to eq(26)
    end
  end
end