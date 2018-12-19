Rails.application.routes.draw do
  get "/" => "users#index"
  post "/create" => "users#create"
  get "/result" => "users#result"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
