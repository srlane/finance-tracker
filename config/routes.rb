Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users, :controllers => {:registrations => "user/registrations"}

  get 'my_portfolio', to: 'users#my_portfolio'

  get 'search_stocks', to: 'stocks#search'

  resources :user_stocks, only: [:create, :destroy]

  get 'my_friends', to: 'users#my_friends'
end
