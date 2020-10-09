# frozen_string_literal: true

# https://github.com/dziugaspeciulevicius/Information-Security/blob/master/TASK1/src/com/company/Main.java

BASE = 'A'.ord
SIZE = 'Z'.ord - BASE + 1

def encrypt(text, key)
  crypt(text, key, :+)
end

def decrypt(text, key)
  crypt(text, key, :-)
end

def crypt(text, key, dir)
  text = text.upcase.gsub(/[^A-Z]/, '')
  key_iterator = key.upcase.gsub(/[^A-Z]/, '').chars.map { |c| c.ord - BASE }.cycle
  text.each_char.inject('') do |ciphertext, char|
    offset = key_iterator.next
    ciphertext << ((char.ord - BASE).send(dir, offset) % SIZE + BASE).chr
  end
end

# taking user input
puts 'Enter plain text to cipher: '
plaintext = gets
puts 'Enter key: '
key = gets

# taking user input and then putting them into a variable
ciphertext = VigenereCipher.encrypt(plaintext, key)
recovered  = VigenereCipher.decrypt(ciphertext, key)
# outputting information to a user

puts "Original: #{plaintext}"
puts "Encrypted: #{ciphertext}"
puts "Decrypted: #{recovered}"
