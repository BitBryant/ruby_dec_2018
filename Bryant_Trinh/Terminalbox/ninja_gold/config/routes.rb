Rails.application.routes.draw do
  get '/' => "rpg#index"
  post 'calculate' => "rpg#calculate"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
