Archive::Application.routes.draw do
  devise_for :users

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  get :dashboard, :controller => :dashboard, :action => :show
  namespace :dashboard do
    resources :documents
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root :to => "home#index"
end
