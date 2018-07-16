Rails.application.routes.draw do
  get 'carts/create'

  put '/add', to: 'carts#add_item', as: 'add'
  put '/remove', to: 'carts#remove_item', as: 'remove'
  put '/update', to: 'carts#update_item', as: 'update'
  put '/carrinho', to: 'carts#show', as: 'carrinho'
  resources :order_meals
  resources :orders
  resources :situations
  root 'home#index'
  devise_for :users
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  get '/backoffice', to: 'users#backoffice', as: 'backoffice'
  # Pedidos
  get '/orders', to: 'orders#index'
  get '/situations', to: 'situations#index'
  #Refeicoes
  get '/meals', to: 'meals#index'
  get '/meals/new', to: 'meals#new'
  post '/meals', to: 'meals#create'
  get '/meals/:id', to: 'meals#show', as: 'meal'
  get '/meals/:id/edit', to: 'meals#edit', as: 'edit_meal'
  patch '/meals/:id', to: 'meals#update'
  delete 'meals/:id', to: 'meals#destroy', as: 'destroy_meal'

  #Categorias
  get '/categories', to: 'categories#index'
  get '/categories/new', to: 'categories#new'
  post '/categories', to: 'categories#create'
  get '/categories/:id', to: 'categories#show', as: 'category'
  get '/categories/:id/edit', to: 'categories#edit', as: 'edit_category'
  patch '/categories/:id', to: 'categories#update'
  delete '/categories/:id', to: 'categories#destroy', as: 'destroy_category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
