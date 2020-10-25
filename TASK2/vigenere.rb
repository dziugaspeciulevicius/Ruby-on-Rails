# frozen_string_literal: true

# https://github.com/dziugaspeciulevicius/Information-Security/blob/master/TASK1/src/com/company/Main.java

# vigenere cipher library (gem install vigenere)
require 'caesar'

# encrypt function which takes a key and a plain text
def encrypt(key, plain_text)
  key = key.upcase.split('')
  cipher_text = plain_text.upcase.split('').collect do |letter|
    if !('A'..'Z').include?(letter)
      cipher_letter = letter
    else
      cipher_letter = Caesar.encode(key.first, letter)
      key << key.shift
    end
    cipher_letter
  end
  cipher_text.join
end

# decrypt function which takes a key and a cipher text
def decrypt(key, cipher_text)
  key = key.upcase.split('')
  plain_text = cipher_text.split('').collect do |cipher_letter|
    if !('A'..'Z').include?(cipher_letter)
      letter = cipher_letter
    else
      letter = Caesar.decode(key.first, cipher_letter)
      key << key.shift
    end
    letter
  end
  plain_text.join
end

# taking user input
puts 'Enter plain text to cipher: '
plaintext = gets.chomp
puts 'Enter key: '
key = gets.chomp

# taking user input and then putting them into a variable
ciphertext = encrypt(key, plaintext)
recovered  = decrypt(key, ciphertext)

# outputting information to a user
puts "Original: #{plaintext}"
puts "Encrypted: #{ciphertext}"
puts "Decrypted: #{recovered}"
