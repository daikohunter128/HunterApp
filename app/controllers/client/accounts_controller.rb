class Client::AccountsController < Client::Base
  
  def show
    @client = current_client
    @entry = Entry.find_by(client_id: current_client.id)
  end
  
  def edit 
    @client = current_client
  end
  
  def update
    @client = current_client
    @client.assign_attributes(client_params)
    if @client.save
      flash.notice = 'アカウント情報を更新しました。'
      redirect_to :client_account
    else
      render action: 'edit'
    end
  end
  
  def bank
    @client = Client.find_by(id: current_client.id)
    render action: 'bank'
  end
  
  def commercial  #特定商取引法
    render action: 'commercial'
  end
  
  private
  def client_params
    params.require(:client).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :agreement, :suspended, :sales, :operation_status, :update_no, :status_no, :contract_renewal)
  end
end
