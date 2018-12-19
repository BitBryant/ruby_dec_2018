Rails.application.routes.draw do
  get 'hello' => 'Says#hello'
  get 'say/hello' => 'Says#say'
  get 'say/hello/joe' => 'Says#name'
  get 'say/hello/michael' => 'Says#name'
  get 'times/restart' => 'Says#restart'
  get 'times' => 'Says#times'
  root '' => 'Says#root'
  resources:say
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
