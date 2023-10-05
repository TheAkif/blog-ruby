Rails.application.routes.draw do
  devise_for :users
  devise_for :articles
  get '/transcripts', to: "transcripts#index"
  root "articles#index"

  resources :articles do
    resources :comments
  end
  resources :users
end
