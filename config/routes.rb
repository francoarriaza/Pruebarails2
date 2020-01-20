Rails.application.routes.draw do
  get 'states/create'
  resources :events, only: :index do
    resources :states, only: :create  
  end

  root to: 'events#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
