Rails.application.routes.draw do
  root 'home#index'

  get 'reel', to: 'reel#index', as: :reel
end
