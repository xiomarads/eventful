Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "site#index"
  resources :events
  get "/events/search_results", to: "events#search"
end
