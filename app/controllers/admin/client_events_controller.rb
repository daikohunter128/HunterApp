class Admin::ClientEventsController < Admin::Base
  def index
    if params[:client_id]
      @client = Client.find(params[:client_id])
      @events = @client.events
    else
      @events = ClientEvent
    end
    @events = @events.order(occurred_at: :desc)
      .includes(:member).page(params[:page])
  end
end
