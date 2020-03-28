Rails.application.routes.draw do
  get 'products', to: 'products#index'

  post 'products', to: 'products#create'

  get 'products/new', to: 'products#new', as: 'new_product'

  get 'products/:id', to: 'products#show', as: 'product'

  get 'products/:id/edit', to: 'products#edit'

  patch 'products/:id',  to: 'products#update'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
