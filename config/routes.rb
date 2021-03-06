ActionController::Routing::Routes.draw do |map|
  map.resources :types

  map.resources :tunneling_unders

  map.resources :groundwater_controls

  map.resources :designers

  map.resources :currencies

  map.resources :construction_techniques

  map.resources :construction_methods

  map.resources :activities

  map.resources :clients

  map.resources :owners

  map.resources :roles

  map.resources :articles

  map.resources :media

  map.resources :projects
   
  map.resources :states

  map.resources :countries

  map.resources :services

  map.resources :geologies

  map.resources :categories

  map.resources :projects, :collection => { :sort => :post}  
  
   map.resources :users
 
  
   map.login 'login', :controller => 'user_sessions', :action => 'new'  
   map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'  
   map.resources :user_sessions 
   
   map.featured 'featured', :controller => 'articles', :action => 'index' 
  
   map.root :controller => :home

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
