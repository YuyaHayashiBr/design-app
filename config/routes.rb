Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :home,  only: [:index]
  resources :notes, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
