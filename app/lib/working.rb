class Working
  def self.break_time
    clients = Client.all.to_a
    clients.each do |m|
      if m.operation_status == "電話で確認"
      else
        m.operation_status = "本日終了"
        m.save
      end
    end
  end
end