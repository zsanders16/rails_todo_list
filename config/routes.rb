Rails.application.routes.draw do
  root 'list_item#index'
  resources :list_item
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
