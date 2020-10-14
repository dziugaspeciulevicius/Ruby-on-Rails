# frozen_string_literal: true

# vigenere cipher library (gem install vigenere)
require 'caesar'

# importing VigenereClass
require_relative 'vigenere_class'

# taking user input
puts 'Enter plain text to cipher: '
plaintext = gets.chomp
puts 'Enter key: '
key = gets.chomp

vigenere = VigenereClass.new(plaintext, key)

# taking user input and then putting them into a variable
ciphertext = vigenere.encrypt(key, plaintext)
recovered  = vigenere.decrypt(key, ciphertext)

# outputting information to a user
puts "Original: #{plaintext}"
puts "Encrypted: #{ciphertext}"
puts "Decrypted: #{recovered}"
