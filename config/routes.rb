Rails.application.routes.draw do
  
  get 'home/index'
  get 'style_guide/index'
  devise_for :users
  root to: "home#index"

  # get "profile", to: "profile#show"
  # put "profile", to: "profile#update"
  # patch "profile", to: "profile#update"
  # get "profile/edit", to: "profile#edit"

  resources :books, only: [:show, :edit, :update] do
    resources :purchases, only: [:new, :create]
    end

  get '', to: 'books#index'
  resources :books
  resources :authors
  resources :sales


  # namespace :admin do
  #   resources :books
  #   resources :authors
  #   resources :sales
  #  end 

   get "style_guide", to: "style_guide#index"
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
  # get 'profile/show'
  # get 'profile/update'
  # get 'profile/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

