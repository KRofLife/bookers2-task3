Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update, :create]

  resources :books do
   resources :post_comments, only: [:create, :destroy]
   resource :favorites, only: [:create, :destroy]
 end
  root 'homes#top'
  get '/home/about' => 'homes#about'



end