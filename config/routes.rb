Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root'lists#index'
 get 'new wish', to: 'lists#index'
 resources :lists do
  resources :name, only: :create
  resources :age, only: :create
  resources :wish, only: :create
 end
 resources :lists, only: :show
 
end
 