Rails.application.routes.draw do
  devise_for :users
   root "welcome#index"
   resources :postcards
   get "/choosefront", to: 'postcards#info'
end