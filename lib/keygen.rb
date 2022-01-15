#KeyGen is a Class to allow key to be instantiated as an object

class KeyGen
  attr_reader  :key

  def initialize(key = nil)
    @key = generate_key(key)
  end

  def generate_key(key)
    if key == nil
      @key = 5.times.map{rand(5)}.join
    else
      key
    end
  end
end
