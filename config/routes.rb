#coding: utf-8
JwchWeb::Application.routes.draw do
  root :to => 'welcome#index'
  
  resources :specialties, :only => [:index, :show]
  resources :organizations, :laws, :only => [:index, :show]
  resources :news, :documents, :education_projects, :teaching_achievements, :only => [:index, :show]
  resources :categories, :only => [] do
    resources :rules,:courses, :workflows, :competitions, :competitions, :only => [:index, :show]
  end
  
  resources :message_channels, :only => [:index, :show] do
    resources :messages
  end

  get 'pages/:key' => 'pages#index', :as => :pages
  get 'rule_types' => 'rule_types#index'
  get 'course_types' => 'course_types#index'
  get 'workflow_types' => 'workflow_types#index'
  get 'competition_types' => 'competition_types#index'

  get "login" => "session#new", :as => :login
  post "login" => "session#create"
  delete "logout" => "session#destroy", :as => :logout

  get 'book' => redirect('/book/index.html')
  get 'book' => redirect('/blog/index.html')

  namespace :admin do
    get '/', :to => "dashboard#show"

    get 'editorbak/uploadfile/:file(.:format)' => 'documents#editor_file'
    get 'editor/uploadfile/:file(.:format)' => 'documents#editor_file'
    get 'editor/sysimage/icon16/:file(.:format)' => redirect("/upload_old/icon16/%{file}.%{format}")

    get 'rule_types' => 'rule_types#index'
    get 'course_types' => 'course_types#index'
    get 'workflow_types' => 'workflow_types#index'
    get 'competition_types' => 'competition_types#index'

    resources :news, :users, :links, :organizations, :laws, :documents, :education_projects, :teaching_achievements, :specialties
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
  end
end
