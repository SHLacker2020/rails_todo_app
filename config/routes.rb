Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "posts#index"

  get "/search", to: "posts#search"
  # Defines the root path route ("/")
  # root "articles#index"
end
