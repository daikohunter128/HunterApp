class Contract
  def self.renewal
    time = Time.zone.now
    
    client = Client.all
    client.each do |m|
      abc = m.created_at.month
      if abc + 1 < time.month
        m.contract_renewal = 2
        m.save
      end
    end
  end
end