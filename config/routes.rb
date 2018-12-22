Rails.application.routes.draw do
  get '', to: 'admin'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get 'excursions', to: 'excursions#index'
  end
end
