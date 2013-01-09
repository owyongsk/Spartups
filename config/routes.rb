Spartups::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  devise_scope :user do
    root :to => "devise/sessions#new"
    get 'signin' => 'devise/sessions#new'
    get 'signout' => 'devise/sessions#destroy'
    get 'signup' => 'devise/registrations#new'
  end

  match '/excel' => 'pages#excel'

  resources :profiles
  resources :projects
  resources :relations
end
