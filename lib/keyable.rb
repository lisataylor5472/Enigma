module Keyable
  def generate_msg_key(key)
    if key == nil
      @key = 5.times.map{rand(5)}.join
    else
      key
    end
  end

  def generate_offset_keys(message_date)
    offsets = {
              "A" => offset_id(message_date)[0].to_i,
              "B" => offset_id(message_date)[1].to_i,
              "C" => offset_id(message_date)[2].to_i,
              "D" => offset_id(message_date)[3].to_i
              }
    offsets
  end

  def offset_id(message_date)
    (message_date.to_i ** 2).to_s.slice!(-4..-1)
  end
end
