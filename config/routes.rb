Rails.application.routes.draw do

  devise_for :users
  resources :posts

  # get 'posts/new'
  root to: 'posts#index'

  # posts GET    /posts(.:format)          # postsindex
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
