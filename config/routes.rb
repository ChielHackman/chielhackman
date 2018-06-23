Rails.application.routes.draw do
  root 'pages#index'
  get '/about', to: 'pages#about', as: 'about'
  resources :clients, only: [:create]

  scope :rails do
    resources :posts, path: 'how-to'
  end
end
