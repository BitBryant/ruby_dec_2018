Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/index'
  get 'posts' => 'posts#index'
  post 'posts' => 'posts#create'
  get 'users/index'
  get 'users' => 'users#index'
  post 'users' => 'users#create'
end
