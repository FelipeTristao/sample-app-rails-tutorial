Rails.application.routes.draw do

  root 'static_pages#home'

  get 'help' => 'static_pages#help'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'signup' => 'users#new'

  resources :users
  # http_request url      action   named_route           purpose
  # GET	    /users	      index	   users_path	           page to list all users
  # GET	    /users/1  	  show	   user_path(user)	     page to show user
  # GET	    /users/new	  new	     new_user_path	       page to make a new user (signup)
  # POST	  /users	      create	 users_path	           create a new user
  # GET	    /users/1/edit	edit	   edit_user_path(user)	 page to edit user with id 1
  # PATCH	  /users/1	    update	 user_path(user)	     update user
  # DELETE	/users/1	    destroy	 user_path(user)	     delete user

  get   'login'   => 'sessions#new'
  post  'login'   => 'sessions#create'
  delete   'logout'  => 'sessions#destroy'
end
