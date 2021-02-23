Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'

  get '/planes', to: 'planes#index'
  get '/planes/new', to: 'planes#new'
  post '/planes', to: 'planes#create'
  get '/planes/:id', to: 'planes#show'

end
