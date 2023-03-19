Rails.application.routes.draw do
  #Users Route
  post "/users" => "users#create"

  #Sessions Route
  post "/sessions" => "sessions#create"

  #Note Routes
  get "/notes" => "notes#index"
  get "/notes/:id" => "notes#show"
  post "/notes" => "notes#create"
  patch "/notes/:id" => "notes#update"
  delete "/notes/:id" => "notes#destroy"
end
