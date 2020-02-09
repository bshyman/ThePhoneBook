Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'
  get 'comments/create'
  get 'pages/about'
  get 'pages/landing'
  post '/contact_me' => 'pages#contact_me', as: 'contact_me'
  get 'users/dashboard'
  resources :tranzactions
  resources :phones do
    collection do
      post 'import_phones_data'
      get 'export_phones_data'
    end
  end
  
  resources :listings do
    resources :comments, only: [:index, :new, :create]
    member do
      post 'claim'
    end
  end
  
  get '/auth/:provider/callback'=>'sessions#create'
  get '/signin'=>'sessions#new', :as=>:signin
  get '/signout'=>'sessions#destroy', :as=>:signout
  get '/auth/failure'=>'sessions#failure'
  root 'listings#index'
end
