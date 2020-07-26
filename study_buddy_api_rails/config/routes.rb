Rails.application.routes.draw do
  resources :users do
    resources :interviews
    resources :comprehensions
    resources :relationships
    resources :concepts do
      resources :practice_problems
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
