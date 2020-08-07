Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_id, to: "sessions#logged_in"
  
  resources :users do
    
    collection do
      post '/login', to: 'sessions#create'
    end
    
    resources :interviews, except: [:index, :show]
    resources :comprehensions, except: [:index]
    resources :relationships
    
    resources :concepts, except: [:index, :show] do
      resources :practice_problems
    
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
