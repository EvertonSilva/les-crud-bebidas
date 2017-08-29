Rails.application.routes.draw do
  resources :drinks, :categories, :suppliers, :manufacturers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
