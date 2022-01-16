# require './spec_helper'
#
# RSpec.describe Cipherable do
#   before(:each) do
#     @enigma = Enigma.new
#     @cipher_shift = [3, 27, 73, 20]
#   end


  #
  # it '#character_set' do
  #   expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
  #   expect(@enigma.character_set).to eq(expected)
  # end
  #
  # it '#loop_cipher' do
  #   expect(@enigma.loop_cipher(@cipher_shift)).to eq ()
  # end
  #
  # it '#shift_message' do
  #   expect(@enigma.shift_message("Hello World", @cipher_shift)).to eq("keder ohulw")
  # end
  #
  # it '#generate - returns todays date' do
  #   expect(@enigma.generate_msg_date(nil)).to eq(Date.today.strftime("%d%m%y"))
  # end
# end
