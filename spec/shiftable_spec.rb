require './spec_helper'

RSpec.describe Shiftable do
  before(:each) do
    @enigma = Enigma.new
    @cipher_shift = {
                "A" => 16,
                "B" => 31,
                "C" => 42,
                "D" => 49
              }
  end

  it '#shift_message' do
    expect(@enigma.shift_message("Hello World", @cipher_shift)).to eq("keder ohulw")
  end
  #
  # it '#generate - returns todays date' do
  #   expect(@enigma.generate_msg_date(nil)).to eq(Date.today.strftime("%d%m%y"))
  # end
end
