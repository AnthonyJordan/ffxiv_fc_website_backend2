Rails.application.routes.draw do
  post 'characters/:id/screenshots', to: 'screenshots#create'
  get 'characters/:id/screenshots', to: 'screenshots#characterIndex'
  resources :characters
  resources :comments
  post 'users/sign_in', to: 'sessions#create'
  get 'users/sign_in', to: 'sessions#show'
  get 'user/:id/characters', to: 'characters#showAll'
  resources :users
  resources :screenshots, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
