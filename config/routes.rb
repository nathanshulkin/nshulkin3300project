Rails.application.routes.draw do

  resources :posts

  get 'posts/new'
  root to: 'posts#new'

  # posts GET    /posts(.:format)          # postsindex
  #root to: 'pages#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
