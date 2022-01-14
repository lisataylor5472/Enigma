require './spec_helper'

RSpec.describe Enigma do
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
end
