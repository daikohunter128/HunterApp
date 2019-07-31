class Usage
  def self.use_invalid
    time = Time.zone.now
    if time.month == 1
      last_month = 12
    else
      last_month = time.month - 1
    end
    
    client = Client.all
    client.each do |m|
      if last_month == 1
        m.agreement1 = "無効"
      elsif last_month == 2
        m.agreement2 = "無効"
      elsif last_month == 3
        m.agreement3 = "無効"
      elsif last_month == 4
        m.agreement4 = "無効"
      elsif last_month == 5
        m.agreement5 = "無効"
      elsif last_month == 6
        m.agreement6 = "無効"
      elsif last_month == 7
        m.agreement7 = "無効"
      elsif last_month == 8
        m.agreement8 = "無効"
      elsif last_month == 9
        m.agreement9 = "無効"
      elsif last_month == 10
        m.agreement10 = "無効"
      elsif last_month == 11
        m.agreement11 = "無効"
      else
        m.agreement12 = "無効"
      end
      m.save
    end
  end
end