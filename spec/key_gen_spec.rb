require './spec_helper'

RSpec.describe KeyGen do

  it 'exists' do
    key_1 = KeyGen.new
    expect(key_1).to be_instance_of(KeyGen)
  end

  it '#generate - returns given key' do
    key_1 = KeyGen.new("12345")
    expect(key_1.key).to eq("12345")
  end

  it '#generate - returns random key' do
    key_1 = KeyGen.new
    expect(key_1.key.class).to be String
    expect(key_1.key.length).to eq(5)
  end
end
