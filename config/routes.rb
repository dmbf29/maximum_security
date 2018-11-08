Rails.application.routes.draw do
  resources :prisons, only: [:show] do
    resources :criminals, only: [:create]
  end
  resources :criminals, only: [:destroy] do
    resources :criminal_tags, only: [:new, :create]
  end
end
