Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # VERB "path", to: "controller#action"
  get "/about", to: "pages#about"

  # get "/", to: "pages#home"
  root "pages#home"

  get "/contacts", to: "pages#contacts"
end
