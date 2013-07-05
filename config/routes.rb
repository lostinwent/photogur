Photogur2::Application.routes.draw do

  post 'pictures' => 'picture#create'
  get 'pictures/new' => 'pictures#new'
 
  get '/' => 'pictures#index'
  get 'pictures' => 'pictures#index'

  get 'pictures/:id' => 'pictures#show', as: "dragon"

end