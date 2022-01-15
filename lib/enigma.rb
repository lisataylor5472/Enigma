require 'key_gen'
require 'date_gen'
require 'offset_gen'

class Enigma
  # def initialize
  # end

  def encrypt(message, key = nil, date = nil)
    message_key = KeyGen.new(key) #creating as object since it has to pass through cipher 
    message_date = DateGen.new(date) #creating as object since it has to pass through cipher
    cipher = Cipher.new(message_key, message_date)
    encrypted = {}
    encrypted[:encryption] = "keder ohulw" #message
    encrypted[:key] = message_key.key
    encrypted[:date] = message_date.date
    encrypted
  end
end
