class General::PrefectureForm
  include ActiveModel::Model
  
  attr_accessor :prefecture
  delegate :persisted?, to: :prefecture
  
  def initialize(prefecture = nil)
    @prefecture = prefecture
    @prefecture ||= Prefecture.new
  end
end