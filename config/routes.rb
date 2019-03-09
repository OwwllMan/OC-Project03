Rails.application.routes.draw do
  root 'home#index'

  get 'films', to: 'home#films'
  get '/préinscription', to: 'home#préinscription'
  get '/actualité', to: 'home#actualité'

  resources :reservations
  get 'reservation/confirmation', to: 'reservations#show', as: :reserv_confirm
  get '/reservation', to: 'reservations#index'
end
