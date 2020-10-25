# frozen_string_literal: true

# https://github.com/dziugaspeciulevicius/Object-Oriented-Programming/tree/master/TASK1/src/com/company
# There has to be methods who return:
# - Rectangle square size
# - Rectangle perimeter
# - Diagonal length
# - Rectangle diagonals intersection coordinates

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

# gets.chomp.to_f basically converts user input into float and to_i to integer
puts 'Please enter the length of a rectangle: '
length = gets.chomp.to_f
puts 'Please enter the width of a rectangle: '
width = gets.chomp.to_f
puts 'Please enter coordinate x: '
x_coordinate = gets.chomp.to_i
puts 'Please enter coordinate y: '
y_coordinate = gets.chomp.to_i

# taking user input and then putting them into a variable
calculated_perimeter = get_perimeter(width, length)
calculated_area = get_area(width, length)
calculated_diagonal = get_diagonal_length(width, length)
calculated_coordinates = get_coordinate_x(x_coordinate, length) + get_coordinate_y(y_coordinate, width)

# outputting information to a user
puts "The perimeter of a rectangle is: #{calculated_perimeter}"
puts "The area of a rectangle is: #{calculated_area}"
puts "The diagonal of a rectangle is: #{calculated_diagonal}"
puts "The rectangles diagonals intersection coordinates are: #{calculated_coordinates}"
