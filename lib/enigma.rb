require 'keyable'
require 'datable'
require 'cipher'

class Enigma
  include Keyable
  include Datable

  def encrypt(message, key = nil, date = nil)
    message_key = generate_key(key)
    message_date = generate_date(date)
    encrypted = {}
    encrypted[:encryption] = "keder ohulw" #message
    encrypted[:key] = message_key
    encrypted[:date] = message_date
    encrypted
  end
end
