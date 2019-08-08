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
    @params.require(:account).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :suspended, :start_date, :end_date, :agreement1, :agreement2, :agreement3, :agreement4, :agreement5, :agreement6, :agreement7, :agreement8, :agreement9, :agreement10, :agreement11, :agreement12, :operation_status, :sales, :update_no, :status_no, :contract_renewal1, :contract_renewal2, :contract_renewal3, :contract_renewal4, :contract_renewal5, :contract_renewal6, :contract_renewal7, :contract_renewal8, :contract_renewal9, :contract_renewal10, :contract_renewal11, :contract_renewal12)
  end
end
  