Rails.application.routes.draw do
  get 'criminals/create'
  get 'criminals/destroy'
  resources :prisons, only: [:show] do
    resources :criminals, only: [:create]
  end
  resources :criminals, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
