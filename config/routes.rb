Rails.application.routes.draw do
  get '/transcripts', to: "transcripts#index"
  root "articles#index"

  resources :articles
end
