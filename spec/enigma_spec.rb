require './spec_helper'

RSpec.describe Enigma do
  before(:each) do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_instance_of Enigma
  end

  # it '#has attributes' do
  #   expect(@class_instance.i).to eq(i)
  # end
end
