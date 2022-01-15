require 'keygen'
require 'dategen'
require 'offsetgen'

class Enigma
  def initialize
  end

  def encrypt(message, key = nil, date = nil)
    key_generator = KeyGen.new(key)
    date_generator = DateGen.new(date)
    # offset_genertor = OffsetGen.new
    encrypted = {}
    encrypted[:encryption] = "keder ohulw" #message
    encrypted[:key] = key_generator.key
    encrypted[:date] = date_generator.date
    encrypted
  end
end
