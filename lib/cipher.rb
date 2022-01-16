require 'keyable'

class Cipher
  include Keyable
  attr_reader  :message, :message_key, :message_date, :cipher_offsets, :cipher_keys, :cipher_shift, :character_set

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
    # evaluate each character of message, if not character - shovel into new string  / if valid character - find index of character in character_set / add shift to character index, shovel new character into string
    ciphertext = ""
    @message.each_char do |character|
      if character_set.include?(character) == false
        ciphertext << character #shovel into string
      else
        index_rotor = character_set.index(character) + @cipher_shift[0]
        ciphertext << character_set.rotate(index_rotor).first #grab first value of new array
        @cipher_shift.rotate!
      end
    end
    ciphertext
  end

  def decipher_message
    # evaluate each character of message, if not character - shovel into new string  / if valid character - find index of character in character_set / add shift to character index, shovel new character into string
    deciphertext = ""
    @message.each_char do |character|
      if character_set.include?(character) == false
        deciphertext << character #shovel into string
      else
        index_rotor = character_set.index(character) - @cipher_shift[0]
        deciphertext << character_set.rotate(index_rotor).first #grab first value of new array
        @cipher_shift.rotate!
      end
    end
    deciphertext
  end
end
