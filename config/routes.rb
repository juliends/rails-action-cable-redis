Rails.application.routes.draw do
  root to: 'results#index'
  mount Sidekiq::Web => '/sidekiq'
end
