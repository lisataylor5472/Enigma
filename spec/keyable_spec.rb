require './spec_helper'

RSpec.describe Keyable do
  before(:each) do
    @enigma = Enigma.new
  end

  it '#generate - returns given key' do
    expect(@enigma.generate_msg_key("12345")).to eq("12345")
    expect(@enigma.generate_msg_key("00005")).to eq("00005")
  end

  it '#generate - returns random key' do
    expect(@enigma.generate_msg_key(nil).class).to be String
    expect(@enigma.generate_msg_key(nil).length).to eq(5)
  end
end
