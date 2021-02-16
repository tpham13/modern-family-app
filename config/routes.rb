# The /logged_in route and corresponding action will come to play later when we design the User registration system in the React front-end. 

Rails.application.routes.draw do
    root to: "static#home"
    post '/login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    get '/logged_in', to: 'sessions#is_logged_in?'
    resources :users, only: [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
