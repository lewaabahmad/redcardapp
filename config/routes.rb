Rails.application.routes.draw do
  root 'main#home'
  get '/card', to: 'main#card'

  resources :messages
  resources :text_messages, :controller => 'messages'
  # resources :email, :controller => 'messages'
end
