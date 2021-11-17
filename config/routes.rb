Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles

  # get '/articles/new' => 'articles#new'
  # post '/articles' => 'articles#create'

  # get '/articles/:id/edit' => 'articles#edit'


  # get '/articles/two' => 'articles#two'
  # get '/articles' => 'articles#index'
  # get '/articles/:id' => 'articles#show'
end
