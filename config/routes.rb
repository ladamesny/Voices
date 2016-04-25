Rails.application.routes.draw do
  root to: "homes#index"

  get 'about', to: "homes#about"
  get 'advocacy', to: "homes#advocacy"
  get 'individuals', to: "homes#individuals"
  get 'blog', to: "blog_posts#index"
  get 'contact', to: "homes#contact"

  resources :blog_posts
end
