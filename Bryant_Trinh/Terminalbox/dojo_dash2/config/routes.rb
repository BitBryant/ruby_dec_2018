Rails.application.routes.draw do
  get '' => 'dojos#index'
  get 'dojos' => 'dojos#index'
  get 'dojos/new' => 'dojos#new'
  post 'dojos/create' => 'dojos#create'
  get 'dojos(/:id)' => 'dojos#show'
  get 'dojos(/:id)/edit' => 'dojos#edit'
  patch 'dojos(/:id)/update' => 'dojos#update'
  get 'dojos(/:id)/delete' => 'dojos#delete'
 end