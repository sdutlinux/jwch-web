#coding=utf-8
JwchWeb::Application.routes.draw do
  root :to => 'welcome#index'
  resources :organizations
  resources :laws

  resources :rule_types do
    resources :rules 
  end
  resources :course_types do
    resources :courses 
  end
  resources :workflow_types do
    resources :workflows
  end
  resources :news
  resources :documents
  resources :education_projects

  get "personal_space" => 'personal_space#index'

  get "mail" => 'mail#index'

  get "login" => "session#new", :as => :login
  post "login" => "session#create"
  delete "logout" => "session#destroy", :as => :logout

  namespace :admin do
    get '/', :to => "dashboard#show", :as => :dashboard

    resources :news, :users, :links
    resources :organizations, :laws
    resources :documents, :education_projects, :teaching_achievements
    
    get 'rule_types' => 'rule_types#index'
    get 'course_types' => 'course_types#index'
    get 'workflow_types' => 'workflow_types#index'
    get 'competition_types' => 'competition_types#index'

    resources :sections do 
      resources :categories
    end 

    resources :categories do 
      resources :rules
      resources :courses
      resources :workflows
      resources :competitions 
    end

# 工作流程
    # resources :workflow_types do
    #   resources :workflows
    # end

    # resources  :rule_types do
    #   resources :rules
    # end
# 课程介绍
    # resources :course_types do
    #   resources :courses
    # end

# 创新竞赛
    resources :competition_types do
      resources :competitions
    end




# 教学简讯
    resources :message_channels
    resources :message_types
    resources :messages

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
