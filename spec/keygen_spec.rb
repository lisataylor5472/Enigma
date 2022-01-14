require './spec_helper'

RSpec.describe KeyGen do
  before(:each) do
    @key_1 = KeyGen.new(nil)
  end

  it 'exists' do
    expect(@key_1).to be_instance_of(KeyGen)
  end

  it '#has_attributes' do
    expect(@key_1.key).to eq(nil)
  end

  it '#generate - returns given key' do
    expect(@key_1.generate_key("12345")).to eq("12345")
  end

  it '#generate - returns random key' do
    expect(@key_1.generate_key(nil).class).to be String
  end
end
