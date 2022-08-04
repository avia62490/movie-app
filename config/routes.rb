Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
