Rails.application.routes.draw do
  resources :channels, only: [ :index, :show, :update ]
end
