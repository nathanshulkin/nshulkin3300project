Rails.application.routes.draw do

  resources :posts

  get 'welcome/index'
  root to: 'welcome#index'

  get 'posts/new'
  root to: 'posts#new'

  #root to: 'pages#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
