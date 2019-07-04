Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #Routes for companies collection
  get 'companies' => 'company#index'
  get '/companies/new' => 'company#new'
  post '/companies' => 'company#create'
  get '/companies/:id/edit' => 'company#edit' # not found

  #Routes for vehicles collection
  get '/vehicles' => 'vehicle#index'
  get '/vehicles/new' => 'vehicle#new'
  post '/vehicles' => 'vehicle#create'
  delete '/vehicles/:id' => 'vehicle#destroy' # not found
  get 'vehicles/:id/edit' => 'vehicle#edit' # not found

  #Welcome
  root 'welcome#index'
end
