Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'

  resources :rides
  resources :attractions
	resources :users
	get 'signin', to: 'sessions#new'
	post 'signin', to: 'sessions#create'
delete '/sessions', to: "sessions#destroy"
end
