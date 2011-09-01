TftAuthApp::Application.routes.draw do
  get "authentications/create"

  get "authentications/index"

  get "authentications/destroy"

  resources :notes

  match '/auth/:provider/callback' => 'authentications#create'
  match '/auth/failure' => 'sessions#failure'
  match 'sign_out' => 'sessions#destroy'

  root :to => "notes#index"
end
