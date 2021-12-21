Rails.application.routes.draw do
  devise_for :users
  #devise_for :users do
  #  get '/users/sign_out' => 'devise/sessions#destroy'
  #end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :bills
  get 'home/index'
  #root 'home#index'
  root 'bills#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
