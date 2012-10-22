#coding: utf-8
JwchWeb::Application.routes.draw do
  root :to => 'welcome#index'

  resources :organizations
  resources :laws
  resources :categories do
    resources :rules 
    resources :courses 
    resources :workflows
  end
  
  resources :message_channel do
    resources :message
  end

  get 'rule_types' => 'rule_types#index'
  get 'course_types' => 'course_types#index'
  get 'workflow_types' => 'workflow_types#index'
  get 'competition_types' => 'competition_types#index'

  resources :news, :only => [:index,:show]
  resources :documents, :only => [:index,:show]
  resources :education_projects

  get "personal_space" => 'personal_space#index'

  get "login" => "session#new", :as => :login
  post "login" => "session#create"
  delete "logout" => "session#destroy", :as => :logout

  namespace :admin do
    get '/', :to => "dashboard#show"
    get 'editorbak/uploadfile/:file(.:format)' => 'documents#editor_file'
    get 'rule_types' => 'rule_types#index'
    get 'course_types' => 'course_types#index'
    get 'workflow_types' => 'workflow_types#index'
    get 'competition_types' => 'competition_types#index'

    resources :news, :users, :links, :organizations, :laws, :documents, :education_projects, :teaching_achievements
    resources :sections do 
      resources :categories
    end 
    resources :categories do 
      resources :rules, :courses, :workflows, :competitions
    end

    resources :message_channels, :only => [:index, :create, :destroy] do
      resources :message_types, :except => [:show]
      resources :messages
    end
    # resources :message_types, :except => [:show] do 
      #resources :messages
    # end
  end
end
