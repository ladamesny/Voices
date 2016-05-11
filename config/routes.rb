Rails.application.routes.draw do
  root to: "homes#about"

  get 'about', to: "homes#about"
  get 'advocacy', to: "homes#advocacy"
  get 'individuals', to: "homes#individuals"
  get 'contact', to: "homes#contact"

  resources :blog_posts
end
