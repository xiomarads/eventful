Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "site#index"
  get "/events/search_results", to: "events#search_results"
  get "/events/filter_search", to: "events#filter_search"
  resources :events
end
