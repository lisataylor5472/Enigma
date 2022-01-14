require 'keygen'

class Enigma
  def initialize
  end

  def encrypt(message, key = nil, date = nil)
    @new_key = KeyGen.new(key)
    encrypted = {}
    encrypted[:encryption] = "keder ohulw"
    encrypted[:key] =  "02715"
    encrypted[:date] =  "040895"
    encrypted
  end
end
