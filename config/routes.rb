Photogur2::Application.routes.draw do
  resources :pictures
  root :to => 'pictures#index'
  # post 'pictures' => 'pictures#create'
  # get 'pictures/new' => 'pictures#new'
 
  # get '/' => 'pictures#index'
  # get 'pictures' => 'pictures#index'

  # get 'pictures/:id' => 'pictures#show', as: "dragon"

  # get 'pictures/:id/edit' => 'pictures#edit', as: "edit_picture"
end