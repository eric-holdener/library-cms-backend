Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    resources :comments
    resources :reviews
    resources :user_books
    resources :books
    devise_for :users, controllers: { sessions: :sessions }, path_names: { sign_in: :login }
    resource :user, only: %i[show update]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
