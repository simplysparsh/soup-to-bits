Rails.application.routes.draw do
  resources :soups, :categories

  root to: 'categories#index'
  get '/allcategories', to: redirect('/')

  get '/soup/:id/toggle_featured', to: 'soups#toggle_featured', as: 'toggle_featured'

end
