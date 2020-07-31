Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_id, to: "sessions#logged_in"
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
    resources :interviews
    resources :comprehensions
    resources :relationships
    resources :concepts do
      resources :practice_problems
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
