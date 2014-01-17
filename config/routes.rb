Gestionemprunts::Application.routes.draw do
  resources :carts

	get "materials/by_type", :controller=>"materials", :action=>"by_type"
	root :to => "requests#new"
	resources :users
	resource :session, :only => [:new, :create, :destroy]
	get '/login' => "sessions#new", :as => "login"
	get '/logout' => "sessions#destroy", :as => "logout"
	
	get '/requests/newtwo' => "requests#newtwo"
	
	resources :complexdates
	resources :technicalfeatures
	resources :materials
	resources :requests
	resources :materialgroups
	resources :materialtypes
end
