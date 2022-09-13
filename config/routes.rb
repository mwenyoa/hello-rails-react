Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :v1, defaults: { format: 'json' } do
    resources :greetings, only: [:index]
  end

  get '/*path', to: 'static#index'

  root 'static#index'
end