Rails.application.routes.draw do
 
  get 'cards/show'
  resources :products

  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]
  get '/login' => 'sessions#new'
  get 'signup'  => 'users#new'
  resources :users
  root 'shops#index'
  post 'login' => 'sessions#create'
  
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
