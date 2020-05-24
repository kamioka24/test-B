Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  root 'home#top'
  get 'home/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :books
end