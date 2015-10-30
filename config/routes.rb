Rails.application.routes.draw do

get("/", { :controller => "movies", :action => "main_page" })

get("/directors", { :controller => "movies", :action => "directors" })
get("/actors", { :controller => "movies", :action => "actors" })
get("/movies", { :controller => "movies", :action => "movies" })

# SHOW

get("/directors/:id", { :controller => "movies", :action => "show_director" })
get("/actors/:id", { :controller => "movies", :action => "show_actor" })
get("/movies/:id", { :controller => "movies", :action => "show_movie" })

# CREATE
get("/director_form", { :controller => "movies", :action => "director_form" })
get("/actor_form", { :controller => "movies", :action => "actor_form" })
get("/movie_form", { :controller => "movies", :action => "movie_form" })

get("/create_director", { :controller => "movies", :action => "create_director" })
get("/create_actor", { :controller => "movies", :action => "create_actor" })
get("/create_movie", { :controller => "movies", :action => "create_movie" })

# EDIT
  get("/directors/:id/edit", { :controller => "movies", :action => "eform_director" })
  get("/actors/:id/edit",    { :controller => "movies", :action => "eform_actor" })
  get("/movies/:id/edit",    { :controller => "movies", :action => "eform_movie" })

  get("/edit_director/:id",   { :controller => "movies", :action => "edit_director" })
  get("/edit_actor/:id",   { :controller => "movies", :action => "edit_actor" })
  get("/edit_movie/:id",   { :controller => "movies", :action => "edit_movie" })

# DELETE
  get("/delete_director/:id", { :controller => "movies", :action => "delete_director" })
  get("/delete_actor/:id", { :controller => "movies", :action => "delete_actor" })
  get("/delete_movie/:id", { :controller => "movies", :action => "delete_movie" })

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
