class General::RequestForm
  include ActiveModel::Model
  
  attr_accessor :request
  delegate :persisted?, to: :request
  
  def initialize(request = nil)
    @request = request
    @request ||= Request.new
  end
  
  def assign_attributes(params = {})
    @params = params
    
    request.assign_attributes(request_params)
  end
  
  def save
    ActiveRecord::Base.transaction do
      request.save!
    end
  end
  
  private
  def request_params
    @params.require(:request).permit(:prefecture, :city)
  end
end