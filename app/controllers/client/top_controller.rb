class Client::TopController < Client::Base
  skip_before_action :authorize
  
  def index
    if current_client
      @time = Time.zone.now
      month = @time.month
      next_month = @time.month+1
      @client = Client.find_by(id: current_client.id)
      data = @client.attributes
      @month = data["agreement#{month}"]
      @next_month = data["agreement#{next_month}"]
      if @client.update_no == 1
        @info = "最新情報"
      else
        @info = "1時間以上前の情報"
        @info1 = "　　　早めに待ち時間情報を更新してください。"
      end
      render action: 'dashboard'
    else
      render action: 'index'
    end
  end
end
