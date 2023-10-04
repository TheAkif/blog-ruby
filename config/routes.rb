Rails.application.routes.draw do
  get '/transcripts', to: "transcripts#index"
  root "articles#index"

  get "/articles", to: "articles#index"

end
