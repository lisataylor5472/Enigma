require './spec_helper'

RSpec.describe DateGen do
  before(:each) do

  end

  it 'exists' do
    date = DateGen.new
    expect(date).to be_instance_of(DateGen)
  end

  it '#generate - returns given date' do
    date = DateGen.new("040895")
    expect(date.date).to eq("040895")
  end

  it '#generate - returns todays date' do
    date = DateGen.new
    expect(date.date).to eq("150122")
  end
end
