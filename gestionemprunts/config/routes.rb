Gestionemprunts::Application.routes.draw do
  get "materialtypes/index"
  get "materialtypes/new"
  get "materialtypes/show"
	root :to => "requests#new"
	resources :users
	resource :session, :only => [:new, :create, :destroy]
	get '/login' => "sessions#new", :as => "login"
	get '/logout' => "sessions#destroy", :as => "logout"
	
	resources :complexdates
	resources :technicalfeatures
	resources :materials
	resources :requests
	resources :materialgroups
	resources :materialtypes
end
