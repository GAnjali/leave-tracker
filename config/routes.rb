Rails.application.routes.draw do
  root 'leaves#index'

  resources :leaves
end
