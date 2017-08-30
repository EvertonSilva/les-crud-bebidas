Rails.application.routes.draw do
  resources :drinks, :categories, :suppliers, :manufacturers
  get '/search', to: 'drinks#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
