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
    cipher_2 = Cipher.new("Hello World", "02345", "010122")
    expect(cipher_2.message_date).to eq("010122")
    expect(cipher_2.message_key).to eq("02345")
  end

  it '#cipher_offsets - attributes continued' do
    expected = {
                "A" => 1,
                "B" => 0,
                "C" => 2,
                "D" => 5
              }
    expect(@cipher.cipher_offsets).to eq(expected)
  end

  it '#cipher_keys - attributes continued' do
    expected = {
                "A" => 2,
                "B" => 27,
                "C" => 71,
                "D" => 15
              }
    expect(@cipher.cipher_keys).to eq(expected)
  end

  it '@cipher_shift - attributes continued' do
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
    expect(cipher_1.cipher_message).to eq("zhtm'v mi?!")
    expect(cipher_2.cipher_message[-1]).to eq("!")
    expect(cipher_2.cipher_message[-1]).to eq("!")
    expect(cipher_2.cipher_message[-2]).to eq("%")
    expect(cipher_2.message[0..6]).to eq("testing")
  end
end

describe Keyable do
  before(:each) do
    @cipher = Cipher.new("Hello, World","02715", "040895")
  end

  it '#generate_offset_keys' do
    expected = {
                "A" => 1,
                "B" => 0,
                "C" => 2,
                "D" => 5
                }
    message_date = "040895"
    expect(@cipher.generate_offset_keys(message_date)).to eq(expected)
  end

  it '#generate_cipher_keys' do
    expected = {
                "A" => 2,
                "B" => 27,
                "C" => 71,
                "D" => 15
                }
    message_key = "02715"
    expect(@cipher.generate_cipher_keys(message_key)).to eq(expected)
  end

  it '#generate_cipher_shift_keys' do
    expected = [3, 27, 73, 20]
    offsets = {
              "A" => 1,
              "B" => 0,
              "C" => 2,
              "D" => 5
              }
    keys =    {
              "A" => 2,
              "B" => 27,
              "C" => 71,
              "D" => 15
              }
    expect(@cipher.generate_cipher_shift_keys(offsets, keys)).to eq(expected)
  end
end

describe Cipherable do
  before(:each) do
    @cipher = Cipher.new("Hello, World","02715", "040895")
  end

  it '#generate_ciphertext' do
    cipher_2 = Cipher.new("1a!","02715", "040895")
    expect(cipher_2.generate_ciphertext[0]).to eq("1")
    expect(cipher_2.generate_ciphertext[1]).to eq("a")
    expect(cipher_2.generate_ciphertext[2]).to be("!")
  end
end
