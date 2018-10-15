Rails.application.routes.draw do
  root to: "books#index"

  get '', to: 'books#index'
  resources :books
  resources :authors
  resources :sales

  namespace :admin do
    resources :books
    resources :authors
    resources :sales
   end 
end


  # get 'admin/index'
  # get 'admin/show'
  # get 'admin_books/new'
  # get 'admin_books/show'
  # get 'admin_books/create'
  # get 'sales/new'
  # get 'sales/create'
  # get 'authors/index'
  # get 'authors/show'
  # get 'books/index'
  # get 'books/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

