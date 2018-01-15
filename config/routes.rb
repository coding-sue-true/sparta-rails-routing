Rails.application.routes.draw do
  # resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/posts/', to: 'posts#index', as: 'posts'

  post '/posts/', to: 'posts#create'

  get '/posts/new', to: 'posts#new', as: 'new_post'

  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'

  get '/posts/:id', to: 'posts#show', as: 'post'

  patch '/posts/:id', to: 'posts#update'

  put '/posts/:id', to: 'posts#update'

  delete '/posts/:id', to: 'posts#destroy'

  #STATIC ROUTE

  get '/about', to: 'static#about'
  #ROOT DIRECTORY
  root 'posts#index'
end
