module Datable
  def generate_msg_date(date)
    if date == nil
      date = Date.today.strftime("%d%m%y") #"DDMMYY"
    else
      date
    end
  end
end
