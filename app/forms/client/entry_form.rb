class Client::EntryForm
  include ActiveModel::Model
  
  attr_accessor :entry
  delegate :persisted?, to: :entry
  
  def initialize(entry = nil)
    @entry = entry
    @entry ||= Entry.new
  end
  
  def assign_attributes(params = {})
    @params = params
    
    entry.assign_attributes(entry_params)
  end
  
  def save
    ActiveRecord::Base.transaction do
      entry.save!
    end
  end
  
  private
  def entry_params
    @params.require(:entry).permit(:body)
  end
end