Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails
  resources :doses
  resources :ingredient
end
