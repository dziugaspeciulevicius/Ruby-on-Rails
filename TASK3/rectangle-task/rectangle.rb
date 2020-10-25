# frozen_string_literal: true

# importing rectangleClass
require_relative 'rectangle_class'

# gets.chomp.to_i basically converts user input into float
puts 'Please enter the length of a rectangle: '
length = gets.chomp.to_f
puts 'Please enter the width of a rectangle: '
width = gets.chomp.to_f
puts 'Please enter coordinate x: '
x_coordinate = gets.chomp.to_i
puts 'Please enter coordinate y: '
y_coordinate = gets.chomp.to_i

# calling a rectangle class to use it in our program
rectangle = RectangleClass.new(length, width, x_coordinate, y_coordinate)

# taking user input and then putting them into a variable
calculated_perimeter = rectangle.get_perimeter(width, length)
calculated_area = rectangle.get_area(width, length)
calculated_diagonal = rectangle.get_diagonal_length(width, length)
calculated_coordinates =
  rectangle.get_coordinate_x(x_coordinate, length) + rectangle.get_coordinate_y(y_coordinate, width)

# outputting information to a user
puts "The perimeter of a rectangle is: #{calculated_perimeter}"
puts "The area of a rectangle is: #{calculated_area}"
puts "The diagonal of a rectangle is: #{calculated_diagonal}"
puts "The rectangles diagonals intersection coordinates are: #{calculated_coordinates}"
