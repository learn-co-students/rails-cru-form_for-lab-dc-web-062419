Rails.application.routes.draw do
  resources :songs, only: [:create, :update, :show, :index, :new, :edit]
  resources :genres, only: [:create, :update, :show, :index, :new, :edit, :destroy]
  resources :artists, only: [:create, :update, :show, :index, :new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
