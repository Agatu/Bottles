Rails.application.routes.draw do
  # get 'cart/show'
  resources :basket_items
  resources :basket
  get 'cart', to: 'cart#show'
  get 'bottles/index'  
  get 'pages/idea'

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
 
  post 'bottles/index'

  resources :bottles
  resources :pages, :only => [:home, :idea]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'wallets/show'  
  # get 'wallets/wallet'  


  root :to=>"pages#home"
end
