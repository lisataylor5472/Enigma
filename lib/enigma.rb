require 'keygen'
require 'dategen'

class Enigma
  def initialize
  end

  def encrypt(message, key = nil, date = nil)
    key_generator = KeyGen.new(key)
    date_generator = DateGen.new(date)
    encrypted = {}
    encrypted[:encryption] = "keder ohulw"
    encrypted[:key] = key_generator.key
    encrypted[:date] = date_generator.date
    encrypted
  end
end
