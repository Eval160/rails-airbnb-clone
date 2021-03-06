Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :cats, only: [:index, :show, :new, :create] do
    resources :purchases, only: [:create]
  end

  resources :purchases, only: [:show]
end
