require 'rails_helper'

describe Client::Authenticator do
  describe '#authenticate' do
    example '正しいパスワードならtrueを返す' do
      m = build(:client)
      expect(Client::Authenticator.new(m).authenticate('pw')).to be_truthy
    end
    
    example '誤ったパスワードならfalseを返す' do
      m = build(:client)
      expect(Client::Authenticator.new(m).authenticate('xy')).to be_falsey
    end
    
    example 'パスワード未設定ならfalseを返す' do
      m = build(:client, password: nil)
      expect(Client::Authenticator.new(m).authenticate(nil)).to be_falsey
    end
    
    example '停止フラグが立っていてもtrueを返す' do
      m = build(:client, suspended: true)
      expect(Client::Authenticator.new(m).authenticate('pw')).to be_falsey
    end
  end
end