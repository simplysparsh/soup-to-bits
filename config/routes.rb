Rails.application.routes.draw do
  resources :soups, :categories

  root to: 'categories#index'
end
