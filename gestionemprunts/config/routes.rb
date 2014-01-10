Gestionemprunts::Application.routes.draw do
	root :to => "users#index"
	resources :users
	resource :session, :only => [:new, :create, :destroy]
	get '/login' => "sessions#new", :as => "login"
	get '/logout' => "sessions#destroy", :as => "logout"
	
	resources :complexdates
	resources :technicalfeatures
	resources :materials
end
