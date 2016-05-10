Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
    member do
      post :retweet
    end
  end
  root to: "tweets#index"
end
