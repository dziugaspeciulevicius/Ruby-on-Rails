# frozen_string_literal: true

# https://rubymonk.com/learning/books/1-ruby-primer/problems/154-permutations
#
# NUMBER SHUFFLE
#
# Given a  digit number with distinct digits, return a sorted array of all the unique numbers that
# can be formed with those digits.
#

def number_shuffle(number)
  no_of_combinations = number.to_s.size == 3 ? 6 : 24
  digits = number.to_s.split(//)
  combinations = []
  combinations << digits.shuffle.join.to_i while combinations.uniq.size != no_of_combinations
  combinations.uniq.sort
end

puts 'Please enter 3 - 4 digit number:'
number = gets
puts number_shuffle number
