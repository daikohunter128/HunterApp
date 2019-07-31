class Waiting
  def self.check
    client = Client.all.to_a
    client.each do |m|
      if Time.zone.now - m.updated_at > 3600
        m.update_no = 2
        m.save
      end
    end  
  end
end
  