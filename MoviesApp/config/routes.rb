MoviesApp::Application.routes.draw do

  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get "/logout", controller: 'sessions', action: 'destroy'

  post "/search", controller: 'movies', action: 'filter'

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Showtime resource:
  # CREATE
  get '/showtimes/new', controller: 'showtimes', action: 'new', as: 'new_showtime'
  post '/showtimes', controller: 'showtimes', action: 'create'

  # READ
  get '/showtimes', controller: 'showtimes', action: 'index', as: 'showtimes'
  get '/showtimes/:id', controller: 'showtimes', action: 'show', as: 'showtime'

  # UPDATE
  get '/showtimes/:id/edit', controller: 'showtimes', action: 'edit', as: 'edit_showtime'
  put '/showtimes/:id', controller: 'showtimes', action: 'update'

  # DELETE
  delete '/showtimes/:id', controller: 'showtimes', action: 'destroy'
  #------------------------------

  # Route for our home page.

  get '/', controller: 'movies', action: 'index'

  # Routes for the Review resource:
  # CREATE
  get '/reviews/new', controller: 'reviews', action: 'new', as: 'new_review'
  post '/reviews', controller: 'reviews', action: 'create'

  # READ
  get '/reviews', controller: 'reviews', action: 'index', as: 'reviews'
  get '/reviews/:id', controller: 'reviews', action: 'show', as: 'review'

  # UPDATE
  get '/reviews/:id/edit', controller: 'reviews', action: 'edit', as: 'edit_review'
  put '/reviews/:id', controller: 'reviews', action: 'update'

  # DELETE
  delete '/reviews/:id', controller: 'reviews', action: 'destroy'
  #------------------------------

  # Routes for the Theater resource:
  # CREATE
  get '/theaters/new', controller: 'theaters', action: 'new'
  post '/theaters', controller: 'theaters', action: 'create'

  # READ
  get '/theaters', controller: 'theaters', action: 'index'
  get '/theaters/:id', controller: 'theaters', action: 'show'

  # UPDATE
  get '/theaters/:id/edit', controller: 'theaters', action: 'edit'
  put '/theaters/:id', controller: 'theaters', action: 'update'

  # DELETE
  delete '/theaters/:id', controller: 'theaters', action: 'destroy'
  #------------------------------

 get "/movies", controller: 'movies', action: 'index'
 post "/movies", controller: 'movies', action: 'create'

 get '/movies/new', controller: 'movies', action: 'new', as: 'new_movie'

 get '/movies/:id', controller: 'movies', action: 'show'
 put '/movies/:id', controller: 'movies', action: 'update'

 delete '/movies/:id', controller: 'movies', action: 'destroy'

 get "/movies/:id/edit", controller: 'movies', action: 'edit'

end
