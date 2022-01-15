class Cipher
  attr_reader  :message_key, :message_date

  def initialize(message_key, message_date)
    @message_key = message_key
    @message_date = message_date
    @offsets = assign_offset
    @shift_key = nil
  end

  def offset_id
    (@message_date.to_i ** 2).to_s.slice!(-4..-1)
    #returns a string for use in offsets method below
  end

  def assign_offset
    @offsets = {}
    @offsets["A"] = offset_id[0]
    @offsets["B"] = offset_id[1]
    @offsets["C"] = offset_id[2]
    @offsets["D"] = offset_id[3]
    @offsets.transform_values(&:to_i)
  end
end
