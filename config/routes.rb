Rails.application.routes.draw do
 resources :muzs

 root 'muzs#index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  



end
