Rails.application.routes.draw do
  get "/log-in" => 'sessions#new',as: 'log_in'

  get "/log-in" => 'sessions#create'

  get "/log-out" => 'sessions#destroy',as: 'log_out'

  resources :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :skills do
    resources :projects
  end
end
