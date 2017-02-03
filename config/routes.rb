Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :magazines
  get '/origin' => 'magazines#origin'
  get '/author' => 'magazines#author'
  get '/circle' => 'magazines#circle'

  root 'magazines#title'
end
