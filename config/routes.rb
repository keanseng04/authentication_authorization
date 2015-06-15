Rails.application.routes.draw do

<<<<<<< HEAD
  get 'oauths/oauth'

  get 'oauths/callback'

  # ==============================================================================================
  # Static Pages
  # ==============================================================================================
=======
  # ==============================================================================================
  # Static Pages
  # ==============================================================================================

>>>>>>> 5127fe1c51071e2940b319cd12983cf6829c1aad
  root 'pages#home'

  # ==============================================================================================
  # Resources
  # ==============================================================================================
<<<<<<< HEAD
  resources :users, only: [:new, :create] do
    get :activate, on: :member
  end
  resources :password_resets, only: [:new, :create, :edit, :update]

  # ==============================================================================================
  # Sorcery/Omniauth
  # ==============================================================================================
  post "oauth/callback" => "oauth#callback"
  get "oauth/callback" => "oauth#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauth#oauth", :as => :auth_at_provider

  # ==============================================================================================
  # User Sessions/Login/Logout
  # ==============================================================================================
  resources :user_sessions, only: [:create]
  get 'login', to: 'user_sessions#new', as: 'login'
  post 'logout', to: 'user_sessions#destroy', as: 'logout'
=======

  resources :users, only: [:new, :create] 
>>>>>>> 5127fe1c51071e2940b319cd12983cf6829c1aad
end
