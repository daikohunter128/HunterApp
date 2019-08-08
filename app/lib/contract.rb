class Contract
  def self.renewal
    client = Client.all
    client.each do |m|
      if m.created_at + 1.month < Time.zone.now
        if m.agreement1 == "有効"
          m.contract_renewal1 = 2
          m.save
        end
        if m.agreement2 == "有効"
          m.contract_renewal2 = 2
          m.save
        end
        if m.agreement3 == "有効"
          m.contract_renewal3 = 2
          m.save
        end
        if m.agreement4 == "有効"
          m.contract_renewal4 = 2
          m.save
        end
        if m.agreement5 == "有効"
          m.contract_renewal5 = 2
          m.save
        end
        if m.agreement6 == "有効"
          m.contract_renewal6 = 2
          m.save
        end
        if m.agreement7 == "有効"
          m.contract_renewal7 = 2
          m.save
        end
        if m.agreement8 == "有効"
          m.contract_renewal8 = 2
          m.save
        end
        if m.agreement9 == "有効"
          m.contract_renewal9 = 2
          m.save
        end
        if m.agreement10 == "有効"
          m.contract_renewal10 = 2
          m.save
        end
        if m.agreement11 == "有効"
          m.contract_renewal11 = 2
          m.save
        end
        if m.agreement12 == "有効"
          m.contract_renewal12 = 2
          m.save
        end
      end
    end
  end
  
  def self.reset
    time = Time.zone.now
    client = Client.all
    client.each do |m|
      if time.month == 1
        if m.agreement1 == "有効"
          if m.agreement2 == "有効"
          else
            m.agreement8 = "無効"
            m.contract_renewal8 = 1
            m.save
          end
        end
      elsif time.month == 2
        if m.agreement2 == "有効"
          if m.agreement3 == "有効"
          else
            m.agreement9 = "無効"
            m.contract_renewal9 = 1
            m.save
          end
        end
      elsif time.month == 3
        if m.agreement3 == "有効"
          if m.agreement4 == "有効"
          else
            m.agreement10 = "無効"
            m.contract_renewal10 = 1
            m.save
          end
        end
      elsif time.month == 4
        if m.agreement4 == "有効"
          if m.agreement5 == "有効"
          else  
            m.agreement11 = "無効"
            m.contract_renewal11 = 1
            m.save
          end
        end
      elsif time.month == 5
        if m.agreement5 == "有効"
          if m.agreement6 == "有効"
          else
            m.agreement12 = "無効"
            m.contract_renewal12 = 1
            m.save
          end
        end
      elsif time.month == 6
        if m.agreement6 == "有効"
          if m.agreement7 == "有効"
          else
            m.agreement1 = "無効"
            m.contract_renewal1 = 1
            m.save
          end
        end
      elsif time.month == 7
        if m.agreement7 == "有効"
          if m.agreement8 == "有効"
          else
            m.agreement2 = "無効"
            m.contract_renewal2 = 1
            m.save
          end
        end
      elsif time.month == 8
        if m.agreement8 == "有効"
          if m.agreement9 == "有効"
          else
            m.agreement3 = "無効"
            m.contract_renewal3 = 1
            m.save
          end
        end
      elsif time.month == 9
        if m.agreement9 == "有効"
          if m.agreement10 == "有効"
          else
            m.agreement4 = "無効"
            m.contract_renewal4 = 1
            m.save
          end
        end
      elsif time.month == 10
        if m.agreement10 == "有効"
          if m.agreement11 == "有効"
          else
            m.agreement5 = "無効"
            m.contract_renewal5 = 1
            m.save
          end
        end
      elsif time.month == 11
        if m.agreement11 == "有効"
          if m.agreement12 == "有効"
          else
            m.agreement6 = "無効"
            m.contract_renewal6 = 1
            m.save
          end
        end
      else
        time.month == 12
        if m.agreement12 == "有効"
          if m.agreement1 == "有効"
          else
            m.agreement7 = "無効"
            m.contract_renewal7 = 1
            m.save
          end
        end
      end
    end
  end
end