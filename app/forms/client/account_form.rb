class Client::AccountForm
  include ActiveModel::Model
  
  attr_accessor :account
  delegate :persisted?, to: :@account
  
  def initialize(account = nil)
    @account = account
    @account ||= Client.new
  end
  
  def assign_attributes(params = {})
    @params = params
    
    account.assign_attributes(account_params)
  end
  
  def save
    ActiveRecord::Base.transaction do
      account.save!
    end
  end
  
  private
  def account_params
    @params.require(:account).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :agreement, :suspended, :sales, :update_no, :status_no, :contract_renewal)
  end
end
  