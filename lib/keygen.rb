#KeyGen is a Class to allow key to be instantiated as an object

class KeyGen
  attr_reader  :key

  def initialize(key = nil)
    @key = key
  end

  def generate_key(key)
    if key == nil
      p abc
    else
      key
    end
  end


end
