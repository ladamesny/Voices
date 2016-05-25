Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: "homes#index"

  get 'about', to: "homes#about"
  get 'advocacy', to: "homes#advocacy"
  get 'individuals', to: "homes#individuals"
  get 'contact', to: "homes#contact"

  post 'homes/index'

  resources :blog_posts
  resources "contacts", only: [:new, :create]
end
