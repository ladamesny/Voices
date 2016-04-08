Rails.application.routes.draw do
  root to: "homes#index"

  get 'about', to: "homes#about"
  get 'advocacy', to: "homes#advocacy"
  get 'individuals', to: "homes#individuals"
  get 'blog', to: "homes#blog"
  get 'contact', to: "homes#contact"
end
