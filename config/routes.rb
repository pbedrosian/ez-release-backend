Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :releases, only: [:create, :index, :show, :update]

  resources :users, only: [:create, :index, :show]



end
