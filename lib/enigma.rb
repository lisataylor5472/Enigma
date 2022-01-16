require 'keyable'
require 'datable'
require 'cipher'
require 'shiftable'

class Enigma
  include Keyable
  include Datable
  include Shiftable

  def encrypt(message, key = nil, date = nil)
    message_key = generate_msg_key(key)
    message_date = generate_msg_date(date)
    cipher = Cipher.new(message_key, message_date)
    encrypted = {}
    encrypted[:encryption] = "keder ohulw" #shift_message(message, cipher.cipher_shift)
    encrypted[:key] = message_key
    encrypted[:date] = message_date
    encrypted
  end
end
