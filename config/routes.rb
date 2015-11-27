Rails.application.routes.draw do
 resources :muzs do 
 	member do
      put "like", to: "muzs#upvote"
      put "dislike", to: "muzs#downvote"
    end
 	resources :comments
 end

 root 'muzs#index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  



end
