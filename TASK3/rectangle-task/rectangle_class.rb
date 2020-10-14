# frozen_string_literal: true

# this a class for a rectangle
class RectangleClass
  def initialize(length, width, coordinate_x, coordinate_y)
    @length = length
    @width = width
    @coordinate_x = coordinate_x
    @coordinate_y = coordinate_y
  end

  # method to get a perimeter of a rectangle
  def get_perimeter(width, length)
    (2 * length) + (2 * width)
  end

  # method to get area of a rectangle
  def get_area(width, length)
    width * length
  end

  # method to calculate rectangles diagonal length
  def get_diagonal_length(width, length)
    Math.sqrt((length * length) + (width * width))
  end

  # method to get x coordinate
  def get_coordinate_x(coordinate_x, length)
    coordinate_x + length / 2
  end

  # method to get y coordinate
  def get_coordinate_y(coordinate_y, width)
    coordinate_y + width / 2
  end
end
