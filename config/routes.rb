Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show], as: :user_profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "site#index"
  get "/events/search_results", to: "events#search_results"
  get "/events/filter_search", to: "events#filter_search"
  get "/info/about", to: "info#about", :as => :about
  get "/info/contact", to: "info#contact", :as => :contact
  resources :events do
    resources :comments
  end
end
