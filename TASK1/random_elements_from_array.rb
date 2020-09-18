# frozen_string_literal: true

def random_select(array, var)
  result = []
  var.times do
    result << array[rand(array.length)]
  end
  result
end

puts 'Enter a sentence or numbers:'
array = gets
puts 'Enter the number of elements you want to print out of the sentence:'
# number_of_elements = gets
number_of_elements = gets.chomp.to_i

puts random_select array, number_of_elements
