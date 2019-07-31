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
      resource :session, only: [ :create, :destroy ]
      resources :clients do
        resources :client_events, only: [ :index ]
      end
      resources :client_events, only: [ :index ]
      resource :password, only: [ :show, :edit, :update ]
      resources :client_passwords, only: [ :show, :edit, :update ]
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
