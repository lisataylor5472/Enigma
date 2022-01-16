require 'keyable'
require 'datable'
require 'cipher'

class Enigma
  include Keyable
  include Datable

  def encrypt(message, key = nil, date = nil)
    message_key = generate_msg_key(key)
    message_date = generate_msg_date(date)
    cipher = Cipher.new(message, message_key, message_date)
    encrypted = {}
    encrypted[:encryption] = cipher.cipher_message
    encrypted[:key] = message_key
    encrypted[:date] = message_date
    encrypted
  end

  def decrypt(ciphertext, key, date = nil)
    date = generate_msg_date(date)
    cipher = Cipher.new(ciphertext, key, date)
    decrypted = {}
    decrypted[:decryption] = cipher.decipher_message
    decrypted[:key] = key
    decrypted[:date] = date
    decrypted
  end
end
