# frozen_string_literal: true

# granting access to rspec testing library
require 'rspec/autorun'

# importing rectangle to a test file
require_relative 'rectangle_class'
require_relative 'factorial'

describe RectangleClass do
  it ' get perimeter of width and length' do
    rectangle = RectangleClass.new
    expect(rectangle.get_perimeter(6, 8)).to eq(28)
  end

  it 'get rectangle area' do
    rectangle = RectangleClass.new
    expect(rectangle.get_area(2, 4)).to eq(8)
  end
end

describe FactorialTest do
  it "finds the factorial of 5" do
    calculator = FactorialTest.new
    expect(calculator.factorial_of(5)).to eq(120)
  end
end