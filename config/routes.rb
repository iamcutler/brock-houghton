Rails.application.routes.draw do
  root 'home#index'

  get 'reel', to: 'reel#index', as: :reel
  get 'archival', to: 'archive#index', as: :archival
  get 'contact', to: 'contact#index', as: :contact
end
