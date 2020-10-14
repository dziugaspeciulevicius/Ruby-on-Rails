# frozen_string_literal: true

# this a class for a vigenere
class VigenereClass
  def initialize(text, key)
    @text = text
    @key = key
  end

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
end
