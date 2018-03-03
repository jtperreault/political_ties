Rails.application.routes.draw do
  get 'users/new'

	get '/wyatt', to: 'wyatt_controller#index'
	get '/wyatt/about', to: 'wyatt_controller#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
