Rails.application.routes.draw do

devise_for :users
resources :favs do
    member do
    put "Like", to: "favs#upvote"
  end
end

root "favs#index"
end
