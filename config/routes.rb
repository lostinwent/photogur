Photogur2::Application.routes.draw do
 
 get 'pictures' => 'pictures#index'

 get 'pictures/:id' => 'pictures#show', as: "picture"

end
