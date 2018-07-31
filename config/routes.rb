Rails.application.routes.draw do
  devise_for :users
   root "welcome#index"
   resources :postcards
   resources :customfronts
   get "/choosefront", to: 'postcards#info'

end