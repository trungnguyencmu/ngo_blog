Rails.application.routes.draw do
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :superuser do
    get :/, controller: :articles, action: :index
    resources :articles
  end
end
