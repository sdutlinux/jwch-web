JwchWeb::Application.routes.draw do

  root :to => 'welcome#index'

  get "news" => "news#index", :as => :news
  get "news/:id" => "news#show", :as => :show_news
  get "login" => "session#new", :as => :login
  post "login" => "session#create"
  delete "logout" => "session#destroy", :as => :logout

  namespace :admin do
    get '/', :to => "dashboard#show", :as => :dashboard

    resources :documents
    resources :news
    resources :users
    resources :links
    resources :organizations
    resources :laws

    resources :competition_types do
      resources :competitions
    end

    resources :workflow_types do
      resources :workflows
    end

    resources :rule_types do
      resources :rules
    end

    resources :course_types do
      resources :courses
    end


  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
