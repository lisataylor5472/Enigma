require './spec_helper'

RSpec.describe Cipher do
  before(:each) do
    @cipher = Cipher.new("02715", "040895")
  end

  it 'exists' do
    expect(@cipher).to be_instance_of(Cipher)
  end

  it 'has attributes' do
    expect(@cipher.message_date).to eq("040895")
  end

  it 'has attributes - with leading zero' do
    cipher_2 = Cipher.new("02345", "150122")
    expect(cipher_2.message_date).to eq("150122")
    expect(cipher_2.message_key).to eq("02345")
  end

  it '#offset_id' do
    expect(@cipher.offset_id).to eq("1025")
  end

  it '#assign_offsets' do
    expected = {
                "A" => 1,
                "B" => 0,
                "C" => 2,
                "D" => 5
              }
    expect(@cipher.assign_offsets).to eq(expected)
  end

  it '#assign_cipher_keys' do
    expected = {
                "A" => 2,
                "B" => 27,
                "C" => 71,
                "D" => 15
              }
    expect(@cipher.assign_cipher_keys).to eq(expected)
  end

  it '@cipher_shift' do
    expected = {
                "A" => 3,
                "B" => 27,
                "C" => 73,
                "D" => 20
              }
    expect(@cipher.cipher_shift).to eq(expected)
  end
end
