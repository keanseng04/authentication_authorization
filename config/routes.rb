Rails.application.routes.draw do

  get 'oauths/oauth'

  get 'oauths/callback'

  # ==============================================================================================
  # Static Pages
  # ==============================================================================================
  root 'pages#home'

  # ==============================================================================================
  # Resources
  # ==============================================================================================
  resources :users, only: [:new, :create] do
    get :activate, on: :member
  end
  resources :password_resets, only: [:new, :create, :edit, :update]

  # ==============================================================================================
  # Sorcery/Omniauth
  # ==============================================================================================
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
