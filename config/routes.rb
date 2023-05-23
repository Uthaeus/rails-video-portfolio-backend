Rails.application.routes.draw do
  root 'pages#home',
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'user_check', to: 'pages#user_check'
  get 'options', to: 'pages#options'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
