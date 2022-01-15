require 'key_gen'
require 'date_gen'
require 'offset_gen'

class Enigma
  # def initialize
  # end

  def encrypt(message, key = nil, date = nil)
    message_key = KeyGen.new(key)
    message_date = DateGen.new(date)
    offset = OffsetGen.new(date)
    encrypted = {}
    encrypted[:encryption] = "keder ohulw" #message
    encrypted[:key] = message_key.key
    encrypted[:date] = message_date.date
    encrypted
  end
end
