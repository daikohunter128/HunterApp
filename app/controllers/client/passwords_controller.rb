class Client::PasswordsController < Client::Base
  def show
    redirect_to :edit_client_password
  end
  
  def edit
    @change_password_form =
      Client::ChangePasswordForm.new(object: current_client)
  end
  
  def update
    @change_password_form = Client::ChangePasswordForm.new(client_params)
    @change_password_form.object = current_client
    if @change_password_form.save
      flash.notice = 'パスワードを変更しました。'
      redirect_to :client_account
    else
      flash.now.alert = '入力に誤りがあります。'
      render action: 'edit'
    end
  end
  
  private
  def client_params
    params.require(:client_change_password_form).permit(
      :current_password, :new_password, :new_password_confirmation
    )
  end
end
