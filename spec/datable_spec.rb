require './spec_helper'

RSpec.describe Datable do
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
