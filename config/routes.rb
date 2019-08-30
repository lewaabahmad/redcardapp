Rails.application.routes.draw do
  root 'main#home'
  get '/card', to: 'main#card'
  get '/about', to: 'main#about'
  get '/privacy-policy', to: 'main#privacy_policy'

  # resources :messages
  resources :text_messages, :controller => 'messages', only: [:create]
  # resources :email, :controller => 'messages'
end
