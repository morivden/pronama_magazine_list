Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :magazines
  get '/origin' => 'magazines#origin'
  get '/author' => 'magazines#author'
  get '/circle' => 'magazines#circle'
  get '/origin/index' => 'magazines#index_origin'
  get '/author/index' => 'magazines#index_author'
  get '/circle/index' => 'magazines#index_circle'

  root 'magazines#title'
end
