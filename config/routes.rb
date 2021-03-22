Rails.application.routes.draw do
  root 'leaves#index'
  resource :leaves
end
