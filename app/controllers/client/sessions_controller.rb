class Client::SessionsController < Client::Base
  skip_before_action :authorize
  
  def new
    if current_client
      redirect_to :client_root
    else
      @form = Client::LoginForm.new
      render action: 'new'
    end
  end
  
  def create
    @form = Client::LoginForm.new(client_login)
    if @form.email.present?
      client = Client.find_by(email_for_index: @form.email.downcase)
    end
    if Client::Authenticator.new(client).authenticate(@form.password)
      if client.suspended?
        client.events.create!(type: 'rejected')
        flash.now.alert = 'アカウントが停止されています。'
        render action: 'new'
      else
        session[:client_id] = client.id
        session[:last_access_time] = Time.current
        client.events.create!(type: 'logged_in')
        flash.notice = 'ログインしました。'
        redirect_to :client_root
      end
    else
      flash.now.alert = 'メールアドレスまたはパスワードが他dしくありません。'
      render action: 'new'
    end
  end
  
  def destroy
    if current_client
      current_client.events.create!(type: 'logged_out')
    end
    session.delete(:client_id)
    flash.notice = 'ログアウトしました。'
    redirect_to :client_root
  end
  
  private
  def client_login
    params.require(:client_login_form).permit(:email, :password)
  end
end
