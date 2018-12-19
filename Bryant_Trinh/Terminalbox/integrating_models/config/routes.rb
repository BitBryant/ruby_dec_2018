Rails.application.routes.draw do
  get 'users' => 'user#index'
  post 'users' => 'user#index'
  post 'users/create' => 'user#create'
  get 'users/new' => 'user#new'
  get 'users/total' => 'user#total'
  get 'users/:id' => 'user#show'
  get 'users/:id/edit' => 'user#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
