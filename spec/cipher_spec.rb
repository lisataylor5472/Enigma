# require './spec_helper'
#
# RSpec.describe Cipher do
#   before(:each) do
#     @ciper = Cipher.new("150122")
#   end
#
#   it 'exists' do
#       expect(@cipher).to be_instance_of(Cipher)
#   end
#
#   it 'has attributes' do
#     expect(@cipher.date).to eq(150122)
#   end
#
#   it '#offset_id' do
#     expect(@cipher.offset_id).to eq("4884")
#   end
#
#   it '#offsets' do
#     expected = {
#                 "A" => 4,
#                 "B" => 8,
#                 "C" => 8,
#                 "D" => 4
#               }
#     expect(@cipher.offsets).to eq(expected)
#   end
# end
