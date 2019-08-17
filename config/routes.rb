Rails.application.routes.draw do
  get 'users/new' => 'users#new'
  get 'users' => 'users#index'
  post  'users/create' => 'users#create'
  post 'users/:id/update' => 'users#update'
  post 'users/:id/destroy' => 'users#destroy'
  get 'users/:id/edit' => 'users#edit'
  get 'users/:id' => 'users#show'

  get 'microposts/new' => 'microposts#new'
  get 'microposts' => 'microposts#index'
  post 'microposts/create' => 'microposts#create'
  post 'microposts/:id/update' => 'microposts#update'
  post 'microposts/:id/destroy' => 'microposts#destroy'
  get 'microposts/:id/edit' => 'microposts#edit'
  get 'microposts/:id' => 'microposts#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
