Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :books, only: [:new, :index, :show, :create, :edit, :destroy, :update] do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create,:destroy]
end
  resources :users,only: [:show,:edit,:index,:update]
  get 'home/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
