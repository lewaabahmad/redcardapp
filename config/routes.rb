Rails.application.routes.draw do
  root 'main#home'
  # get '/es', to: 'main#home_es'

  get '/about', to: 'main#about'
  get '/faqs', to: 'main#faqs'
  get '/resources', to: 'main#resources'
  get '/contact', to: 'main#contact'
  get '/privacy-policy', to: 'main#privacy_policy'

  get '/service-worker.js' => "service_worker#service_worker"
  get '/manifest.json' => "service_worker#manifest"

  # resources :messages
  resources :text_messages, :controller => 'messages', only: [:create]
  # resources :email, :controller => 'messages'
end
