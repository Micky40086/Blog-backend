require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount Sidekiq::Web => '/sidekiq'
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  namespace :admin do
    resources :posts
  end

  
  get 'admin', to: 'admin#index'

  post '/tinymce_assets' => 'tinymce_assets#create'
  get 'index', to: 'page#index'
  root 'page#index'
  
  #get '*path', to: 'page#index'
end
