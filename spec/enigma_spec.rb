require './spec_helper'

describe Enigma do
  before(:each) do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_instance_of Enigma
  end

  it '#encrypt' do #FINAL GOAL
    expected =  {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it `#decrypt a message with a key (uses today's date)` do
    decryption =  {
      decryption: "hello world",
      key: "02715",
      date: Date.today.strftime("%d%m%y")
    }
    encrypted = @enigma.encrypt("hello world", "02715")
    expect(@enigma.decrypt(encrypted[:encryption], "02715")).to eq(decryption)
  end
end

describe DateGenerator do
  before(:each) do
    @enigma = Enigma.new
  end

  it '#generate - returns given date' do
    expect(@enigma.generate_msg_date("040895")).to eq("040895")
  end

  it '#generate - returns todays date' do
    expect(@enigma.generate_msg_date(nil)).to eq(Date.today.strftime("%d%m%y"))
  end
end

describe Keyable do
  before(:each) do
    @enigma = Enigma.new
  end

  it '#generate_msg_key - returns given key' do
    expect(@enigma.generate_msg_key("12345")).to eq("12345")
    expect(@enigma.generate_msg_key("00005")).to eq("00005")
  end

  it '#generate_msg_key - returns random key' do
    expect(@enigma.generate_msg_key(nil).class).to be String
    expect(@enigma.generate_msg_key(nil).length).to eq(5)
  end
end

describe Enigma do
  before(:each) do
    @enigma = Enigma.new
  end

  it '#decrypt' do #FINAL GOAL
    expected =  {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end
end
