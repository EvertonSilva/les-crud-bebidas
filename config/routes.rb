Rails.application.routes.draw do
  resources :drinks, :categories, :suppliers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
