require_relative 'keyable'
require_relative 'cipher'

class Enigma
  include Keyable

  def encrypt(message, key = generate_msg_key, date = nil)
    message_date = generate_msg_date(date)
    cipher = Cipher.new(message, key, message_date)
    encrypted = {}
    encrypted[:encryption] = cipher.cipher_message
    encrypted[:key] = key
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
