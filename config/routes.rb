Rails.application.routes.draw do
 
  resources :bottles
  resources :pages, :only => [:home, :idea]
  
  post 'bottles/index'

  resources :basket_items
  resources :basket
  get 'cart', to: 'cart#show'
  get 'bottles/index'  
  get 'pages/idea'

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
 
  
  resources :wallets
  resource :wallet
    resolve('Wallet') {[:wallet]}

  patch 'wallet/:id', to: 'wallets#add_money' 

  resource :wallet do
    member do
      get 'add_money'
    end
  end


  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  root :to=>"pages#home"
end
