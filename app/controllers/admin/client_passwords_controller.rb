class Admin::ClientPasswordsController < Admin::Base
  def edit
    @client = Client.find(params[:id])
  end
  
  def update
    @client = Client.find(params[:id])
    @client.assign_attributes(client_params)
    if @client.save
      flash.notice = '代行業者パスワードを更新しました。'
      redirect_to :admin_root
    else
      render action: 'edit'
    end
  end
  
  private
  def client_params
    params.require(:client).permit(:company_name, :company_name_kana, :representative, :representative_kana, :certification, :postal_code1, :postal_code2, :prefecture, :city, :address1, :address2, :phone1, :phone2, :phone3, :email, :prefecture_cord, :password, :agreement, :suspended, :start_date, :end_date, :agreement1, :agreement2, :agreement3, :agreement4, :agreement5, :agreement6, :agreement7, :agreement8, :agreement9, :agreement10, :agreement11, :agreement12, :operation_status, :sales, :update_no, :status_no)
  end
end
