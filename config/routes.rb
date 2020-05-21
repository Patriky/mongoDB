Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #Routes for companies collection
  get 'companies' => 'company#index'
  get '/companies/new' => 'company#new'
  post '/companies' => 'company#create'
  get '/companies/:id/edit' => 'company#edit', as: :edit_company 
  patch '/companies/:id' => 'company#update' # not found
  get '/companies/:id' => 'company#show', as: :company


  #Routes for vehicles collection
  get '/vehicles' => 'vehicle#index'
  get '/vehicles/new' => 'vehicle#new'
  post '/vehicles' => 'vehicle#create'
  delete '/vehicles/:id' => 'vehicle#destroy' # not found
  get 'vehicles/:id/edit' => 'vehicle#edit' # not found
  patch 'vehicles/:id' => 'vehicle#update'
  get 'vehicles/:id' => 'vehicle#show', as: :vehicle

  #Welcome
  root 'welcome#index'
end
