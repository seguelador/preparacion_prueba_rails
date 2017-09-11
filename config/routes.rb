	Rails.application.routes.draw do

  get 'catches/index'

	root 'pokemons#index'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
  
  resources :pokemons
  resources :catches do
  	member do
  		patch 'level_up'
  	end

  	collection do
  		post 'add_pokemon'
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
