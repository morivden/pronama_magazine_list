Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :magazines
  # 原作一覧
  get '/origin' => 'magazines#origin'
  # 作者一覧
  get '/author' => 'magazines#author'
  # サークル一覧
  get '/circle' => 'magazines#circle'
  # 原作ごとの一覧
  get '/origin/index' => 'magazines#index_origin'
  # 作者ごとの一覧
  get '/author/index' => 'magazines#index_author'
  # サークルごとの一覧
  get '/circle/index' => 'magazines#index_circle'

  root 'magazines#title'
end
