Rails.application.routes.draw do
  config = Rails.application.config.hunter
  
  constraints host: config[:client][:host] do
    namespace :client, path: config[:client][:path] do
      root 'top#index'      
      get 'login' => 'sessions#new', as: :login
      resource :session, only: [ :create, :destroy ]
      resource :account do
        get :bank
        get :commercial
      end
      resource :password, only: [ :show, :edit, :update ]
      resources :entries
      resource :user do
        get :terms
        get :merit
        get :personal_info
        get :commercial
        get :forget
        get :contact
        get :resume
      end
    end
  end
  
  constraints host: config[:admin][:host] do
    namespace :admin, path: config[:admin][:path] do
      root 'top#index'
      get 'login' => 'sessions#new', as: :login
      get 'index' => 'clients#index', as: :client_index
      get 'index' => 'chooses#index', as: :choose_index
      resource :session, only: [ :create, :destroy ]
      resource :choose do
        get :index_first
        get :prefecture_search
        get :hokkaidou
        get :aomori
        get :iwate
        get :miyagi
        get :akita
        get :yamagata
        get :fukushima
        get :ibaraki
        get :tochigi
        get :gunma
        get :saitama
        get :chiba
        get :tokyo
        get :kanagawa
        get :niigata
        get :toyama
        get :ishikawa
        get :fukui
        get :yamanashi
        get :nagano
        get :gifu
        get :shizuoka
        get :aichi
        get :mie
        get :shiga
        get :kyoto
        get :oosaka
        get :hyogo
        get :nara
        get :wakayama
        get :tottori
        get :shimane
        get :okayama
        get :hiroshima
        get :yamaguchi
        get :tokushima
        get :kagawa
        get :ehime
        get :kochi
        get :fukuoka
        get :saga
        get :nagasaki
        get :kumamoto
        get :ooita
        get :miyazaki
        get :kagoshima
        get :okinawa
      end
      
      resources :clients do
        resources :client_events, only: [ :index ]
      end
      resources :chooses do
        resources :client_events, only: [ :index ]
      end
      
      resource :client do
        
        get :prefecture_search
        get :hokkaidou
        get :aomori
        get :iwate
        get :miyagi
        get :akita
        get :yamagata
        get :fukushima
        get :ibaraki
        get :tochigi
        get :gunma
        get :saitama
        get :chiba
        get :tokyo
        get :kanagawa
        get :niigata
        get :toyama
        get :ishikawa
        get :fukui
        get :yamanashi
        get :nagano
        get :gifu
        get :shizuoka
        get :aichi
        get :mie
        get :shiga
        get :kyoto
        get :oosaka
        get :hyogo
        get :nara
        get :wakayama
        get :tottori
        get :shimane
        get :okayama
        get :hiroshima
        get :yamaguchi
        get :tokushima
        get :kagawa
        get :ehime
        get :kochi
        get :fukuoka
        get :saga
        get :nagasaki
        get :kumamoto
        get :ooita
        get :miyazaki
        get :kagoshima
        get :okinawa
        #resources :client_events, only: [ :index ]
      end
      resources :client_events, only: [ :index ]
      resource :password, only: [ :show, :edit, :update ]
      resources :client_passwords, only: [ :show, :edit, :update ]
      resources :agreements, only: [ :show, :edit, :update ]
      resource :account do
        get :use_month
        get :renewal
      end
    end
  end
  
  constraints host: config[:general][:host] do
    namespace :general, path: config[:general][:path] do
      root 'top#index'
      resource :request do
        get :company
        get :advertisement
      end
      resources :clients do
        get :company
      end
    end
  end
  
  root 'errors#routing_error'
  get '*anything' => 'errors#routing_error'
end
