require_relative 'keyable'
require_relative 'cipher'

class Enigma
  include Keyable

  def encrypt(message, key = nil, date = nil)
    msg_key = generate_msg_key(key)
    msg_date = generate_msg_date(date)
    cipher = Cipher.new(message, msg_key, msg_date)
    encrypted = {}
    encrypted[:encryption] = cipher.cipher_message
    encrypted[:key] = msg_key
    encrypted[:date] = msg_date
    encrypted
  end

  def decrypt(ciphertext, key = nil, date = nil)
    msg_key = generate_msg_key(key)
    msg_date = generate_msg_date(date)
    cipher = Cipher.new(ciphertext, msg_key, msg_date)
    decrypted = {}
    decrypted[:decryption] = cipher.decipher_message
    decrypted[:key] = msg_key
    decrypted[:date] = msg_date
    decrypted
  end
end
