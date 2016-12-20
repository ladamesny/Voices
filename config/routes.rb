Rails.application.routes.draw do
  devise_for :users
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: "homes#index"

  get 'about', to: "homes#about"
  get 'advocacy', to: "homes#advocacy"
  get 'individuals', to: "homes#individuals"
  get 'contact', to: "homes#contact"
  get 'admin', to: "homes#admin"

  post 'homes/thank_you'

  resources :blog_posts
end
