Rails.application.routes.draw do

# //////////ROOT ROUTE///////////////////////
  root 'home#index'

# //////////SESSIONS ROUTES/////////////////
  get    '/login/:title'  => 'sessions#new'
  post   '/login/'        => 'sessions#create'
  delete '/logout/:title' => 'sessions#destroy'

# /////////RESOURCE/CRUD ROUTES/////////////
  resources :instructors
  resources :students

end
