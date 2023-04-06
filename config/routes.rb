Rails.application.routes.draw do
  get "/contacts" => "contacts#show"
  post "/contacts" => "contacts#create"
  patch"/contacts/:id" => "contacts#update"
end
