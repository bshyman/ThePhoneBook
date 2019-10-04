Rails.application.routes.draw do
  get 'users/dashboard'
  resources :transactions
  resources :phones do
    collection do
      post 'import_phones_data'
      get 'export_phones_data'
    end
  end
  
  get '/auth/:provider/callback'=>'sessions#create'
  get '/signin'=>'sessions#new', :as=>:signin
  get '/signout'=>'sessions#destroy', :as=>:signout
  get '/auth/failure'=>'sessions#failure'
  root 'users#dashboard'
end
