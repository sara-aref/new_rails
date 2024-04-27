Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/posts', to: 'posts#create', as: 'posts'

  get '/posts', to: 'posts#index', as: 'posts_index'
  get '/posts/:id', to: 'posts#show', as: 'post'

  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update'

  delete '/posts/:id', to: 'posts#delete', as: 'delete_post'


  get '/author/new', to: 'author#new', as: 'new_author'
  post '/author', to: 'author#create', as: 'authors'

  get '/author', to: 'author#index', as: 'author_index'
  get '/author/:id', to: 'author#show', as: 'author'

  get '/authorts/:id/edit', to: 'author#edit', as: 'edit_author'
  patch '/author/:id', to: 'author#update'

  delete '/author/:id', to: 'author#delete', as: 'delete_author'


end
