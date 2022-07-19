Rails.application.routes.draw do
  resources :characters
  resources :comments
  post 'users/sign_in', to: 'sessions#create'
  get 'users/sign_in', to: 'sessions#show'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
