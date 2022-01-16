class Cipher
  attr_reader  :message_key, :message_date, :cipher_offsets, :cipher_keys, :cipher_shift

  def initialize(message_key, message_date)
    @message_key = message_key
    @message_date = message_date
    @cipher_offsets = assign_offsets
    @cipher_keys = assign_cipher_keys
    @cipher_shift = @cipher_keys.merge(@cipher_offsets) { |key, old_value, new_value| old_value + new_value }
  end

  def offset_id
    (@message_date.to_i ** 2).to_s.slice!(-4..-1)
    #returns a string for use in offsets method below
  end

  def assign_offsets
    @cipher_offsets = {}
    @cipher_offsets["A"] = offset_id[0]
    @cipher_offsets["B"] = offset_id[1]
    @cipher_offsets["C"] = offset_id[2]
    @cipher_offsets["D"] = offset_id[3]
    @cipher_offsets.transform_values(&:to_i)
  end

  def assign_cipher_keys
    @cipher_keys = {}
    @cipher_keys["A"] = @message_key[0..1]
    @cipher_keys["B"] = @message_key[1..2]
    @cipher_keys["C"] = @message_key[2..3]
    @cipher_keys["D"] = @message_key[3..4]
    @cipher_keys.transform_values(&:to_i)
  end
end
