Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :brands do
  	resources :cosmetics do
  		collection { post :import }
  	end
  end
  root 'brands#index'
end
