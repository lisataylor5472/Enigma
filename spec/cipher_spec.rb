require './spec_helper'

RSpec.describe Cipher do
  before(:each) do
    @cipher = Cipher.new("Hello, World","02715", "040895")
  end

  it 'exists' do
    expect(@cipher).to be_instance_of(Cipher)
  end

  it 'has attributes' do
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    expect(@cipher.message_date).to eq("040895")
    expect(@cipher.message_key).to eq("02715")
    expect(@cipher.message).to eq("hello, world")
    expect(@cipher.character_set).to eq(expected)
  end

  it 'has attributes - with leading zero' do
    cipher_2 = Cipher.new("Hello World", "02345", "150122")
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
    expect(@cipher.cipher_offsets).to eq(expected)
  end

  it '#assign_cipher_keys' do
    expected = {
                "A" => 2,
                "B" => 27,
                "C" => 71,
                "D" => 15
              }
    expect(@cipher.cipher_keys).to eq(expected)
  end

  it '#shift' do
    expected = [3, 27, 73, 20]
    expect(@cipher.shift).to eq(expected)
  end

  it '@cipher_shift' do
    shifts = [3, 27, 73, 20]
    expect(@cipher.cipher_shift).to eq(shifts)
    expect(@cipher.cipher_shift.rotate!).to eq([27, 73, 20, 3])
    expect(@cipher.cipher_shift.rotate!).to eq([73, 20, 3, 27])
    expect(@cipher.cipher_shift.rotate!).to eq([20, 3, 27, 73])
    expect(@cipher.cipher_shift.rotate!).to eq([3, 27, 73, 20])
  end

  it '#cipher_message' do
    cipher_1 = Cipher.new("What's UP?!","02715", "040895")
    cipher_2 = Cipher.new("TESTING$%!","02715", "040895")
    cipher_3 = Cipher.new("this is a secret message","02715", "040895")
    expect(cipher_1.cipher_message).to eq("zhtm'v mi?!")
    expect(cipher_2.cipher_message).to eq("wekmlnz$%!")
    expect(cipher_3.cipher_message).to eq("whalciktd kyfrxmcmxlvazy")
  end
end
