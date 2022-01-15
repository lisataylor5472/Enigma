module Keyable
  def generate_key(key)
    if key == nil
      @key = 5.times.map{rand(5)}.join
    else
      key
    end
  end
end
