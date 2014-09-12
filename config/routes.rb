Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  get 'reel', to: 'reel#index', as: :reel
  get 'archival', to: 'archive#index', as: :archival
  get 'contact', to: 'contact#index', as: :contact
end
