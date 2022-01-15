require './spec_helper'

RSpec.describe OffsetGen do
  before(:each) do

  end

  it 'exists' do
    offset = OffsetGen.new("150122")
    expect(offset).to be_instance_of(OffsetGen)
  end

  it 'has attributes' do
    offset = OffsetGen.new("150122")
    expect(offset.date).to eq(150122)
  end

  it '#offset_id' do
    offset = OffsetGen.new("150122")
    expect(offset.offset_id).to eq(4884)
  end
end
