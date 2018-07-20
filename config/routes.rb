Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root controller: :articles, action: :index

  resources :articles
  namespace :superuser do
    get :/, controller: :articles, action: :index
    resources :articles do
	  	put :active
	  end
  end
end
