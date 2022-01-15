class OffsetGen
  attr_reader  :date

  def initialize(date)
    @date = date.to_i
  end

  def offset_id
    (@date ** 2).to_s.slice!(-4..-1).to_i
  end
end
