Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  get 'my_portfolio', to: 'users#my_portfolio'

  get 'search_stocks', to: 'stocks#search'

  resources :user_stocks, only: [:create, :destroy]
end
