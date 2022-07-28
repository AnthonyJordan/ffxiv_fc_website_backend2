Rails.application.routes.draw do
  post 'characters/:id/screenshots', to: 'screenshots#create'
  get 'characters/:id/screenshots', to: 'screenshots#characterIndex'
  resources :characters
  post 'characters/:id/comments', to:'comments#create'
  get 'screenshots/:id/comments', to: 'comments#showAll'
  resources :comments
  post 'users/sign_in', to: 'sessions#create'
  get 'users/sign_in', to: 'sessions#show'
  get 'user/:id/characters', to: 'characters#showAll'
  resources :users
  resources :screenshots, only: [:index,:destroy]
  post 'users/forgot_password', to: "passwords#forgot"
  post 'users/reset_password', to: "passwords#reset"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
