class General::TopController < General::Base
  def index
    @request = Request.find(1)
    render action: 'index'
  end
end
