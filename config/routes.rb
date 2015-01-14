Rails.application.routes.draw do

  root 'market#index'

  #resources :sales do
  # resources :items
  #end

  resources :purchases do
    resources :items
  end
  
  post "/purchases/add_item" => "purchases#add_item"
  
  delete "/purchases/:purchase_id/items/:id" => "purchases#delete_item"

  get 'purchases/:id/finished' => 'purchases#finished', as: :finished

  resources :stocks
  
  resources :products

  resources :suppliers

  resources :units

  resources :categories

end
