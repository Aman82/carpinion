Rails.application.routes.draw do
 
# USER RESOURCES
  #root :to => "polls#index"

  resources :polls
  # get 'vote/:answer_id', to: 'polls#vote', as: :vote_on_poll

  
  #root 'users#new'
  get '/users/' => 'users#index'
  get '/signup' => 'users#new', as: :signup
  get '/users/:id' => 'users#show', as: :user
  post '/users/' => 'users#create'
  get '/users/:id/edit' => 'users#edit', as: :edit_user
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'


# SESSIONS RESOURCES
  #resources :users
  get '/login' => 'sessions#new', as: :sessions
  post '/login' => 'sessions#create'  
  delete '/logout' =>'sessions#destroy', as: :log_out

# VEHICLE RESOURCES
  resources :cars
  get 'cars/' => 'cars#index'
  post 'cars/' => 'cars#create'
  #get 'cars/:id/edit' => 'cars#edit', as: :edit_car
  patch 'cars/:id' => 'cars#update'
  delete '/cars/:id' => 'cars#destroy'

# POLLS RESOURCES



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
