require 'keyable'
require 'datable'
require 'cipher'
# require 'cipherable'

class Enigma
  include Keyable
  include Datable
  # include Cipherable

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
end
