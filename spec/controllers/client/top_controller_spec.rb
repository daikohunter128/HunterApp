require 'rails_helper'

describe Client::TopController, 'ログイン後' do
  let(:client) { create(:client) }
  
  before do
    session[:client_id] = client.id
    session[:last_access_time] = 1.second.ago
  end
  
  describe '#index' do
    example '通常はclient/top/indexを表示' do
      get :index
      expect(response).to render_template('client/top/index')
    end
    
    example '停止フラグがセットされたら強制的にログアウト' do
      client.update_column(:suspended, true)
      get :index
      expect(session[:client_id]).to be_nil
      expect(response).to redirect_to(client_root_url)
    end
    
    example 'セッションタイムアウト' do
      session[:last_access_time] =
        Client::Base::TIMEOUT.ago.advance(seconds: -1)
      get :index
      expect(session[:client_id]).to be_nil
      expect(response).to redirect_to(client_login_url)
    end
  end
end
    