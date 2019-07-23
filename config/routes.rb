Rails.application.routes.draw do
  root 'main#home'
  # get '/about', to: 'main#about'

  resources :messages
  resources :text_messages, :controller => 'messages'
  # resources :email, :controller => 'messages'
end
