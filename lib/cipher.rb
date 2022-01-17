require_relative 'keyable'

class Cipher
  include Keyable
  attr_reader :message,
              :message_key,
              :message_date,
              :cipher_offsets,
              :cipher_keys,
              :cipher_shift,
              :character_set

def initialize(message, message_key, message_date)
  @message = message.downcase
  @message_key = message_key
  @message_date = message_date
  @cipher_offsets = generate_offset_keys(@message_date)
  @cipher_keys = generate_cipher_keys(@message_key)
  @cipher_shift = generate_cipher_shift_keys(@cipher_offsets, @cipher_keys)
  @character_set = ("a".."z").to_a << " "
end

  def cipher_message
    ciphertext = ""
    @message.each_char do |character|
      if character_set.include?(character) == false
        ciphertext << character
      else
        index_rotor = character_set.index(character) + @cipher_shift[0]
        ciphertext << character_set.rotate(index_rotor)[0]
        @cipher_shift.rotate!
      end
    end
    ciphertext
  end

  def decipher_message
    deciphertext = ""
    @message.each_char do |character|
      if character_set.include?(character) == false
        deciphertext << character
      else
        index_rotor = character_set.index(character) - @cipher_shift[0]
        deciphertext << character_set.rotate(index_rotor)[0]
        @cipher_shift.rotate!
      end
    end
    deciphertext
  end
end
