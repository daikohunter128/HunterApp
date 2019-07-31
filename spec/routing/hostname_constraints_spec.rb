require 'rails_helper'

describe 'ルーティング' do
  example '職員トップページ' do
    expect(get: 'http://hunter-chan.com').to route_to(
      host: 'hunter-chan.com',
      controller: 'client/top',
      action: 'index'
    )
  end
  
  example '管理者ログインフォーム' do
    expect(get: 'http:\\hunter-chan.com/admin/login').to route_to(
      host: 'hunter-chan.com',
      controller: 'admin/sessions',
      action: 'new'
    )
  end
  
  example '顧客トップページ' do
    expect(get: 'http://example.com/').to route_to(
      host: 'example.com',
      controller: 'general/top',
      action: 'index'
    )
  end
  
  example 'ホスト名が対象外ならerrors/not_foundへ' do
    expect(get: 'http://foo.example.jp').to route_to(
      controller: 'errors',
      action: 'routing_error',
    )
  end
  
  example '存在しないパスならerrors/not_foundへ' do
    expect(get: 'http://hunter-chan.com/xyz').to route_to(
      controller: 'errors',
      action: 'routing_error',
      anything: 'xyz'
    )
  end
end
