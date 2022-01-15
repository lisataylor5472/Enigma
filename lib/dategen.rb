#KeyGen is a Class to allow key to be instantiated as an object

class DateGen
  attr_reader  :date

  def initialize(date = nil)
    @date = generate_date(date)
  end

  def generate_date(date)
    if date == nil
      @date = Date.today.strftime("%m%d%y")
    else
      date
    end
  end
end
