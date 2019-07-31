class Client::Base < ApplicationController
  before_action :authorize
  before_action :check_account
  before_action :check_timeout
  
  private
  def current_client
    if session[:client_id]
      @current_client ||=
        Client.find_by(id: session[:client_id])
    end
  end
  
  helper_method :current_client
  
  def authorize
    unless current_client
      flash.alert = '管理者としてログインしてください。'
      redirect_to :client_login
    end
  end
  
  def check_account
    if current_client && !current_client.active?
      session.delete(:client_id)
      flash.alert = 'アカウントが無効になりました。'
      redirect_to :client_root
    end
  end
  
  TIMEOUT = 120.minutes
  
  def check_timeout
    if current_client
      if session[:last_access_time] >= TIMEOUT.ago
        session[:last_access_time] = Time.current
      else
        session.delete(:client_id)
        flash.alert = 'タイムアウトのため再度ログインしてください。'
        redirect_to :client_login
      end
    end
  end
end