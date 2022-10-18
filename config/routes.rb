Rails.application.routes.draw do
  resources :missions
  resources :planets
  resources :scientists

  # get "/scientists", to: "scientist#index"
  # get "/scientists/:id", to: "scientist#show"

end
