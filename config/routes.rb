Rails.application.routes.draw do
 resources :muzs do 
 	resources :comments
 end

 root 'muzs#index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  



end
