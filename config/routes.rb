Rails.application.routes.draw do
	get 'wyatt_controller/index'
	root 'wyatt_controller#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
