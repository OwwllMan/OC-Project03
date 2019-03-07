Rails.application.routes.draw do
  root 'home#index'


  resources :reservations
  get 'reservation/confirmation', to: 'reservations#show', as: :reserv_confirm
  get '/reservation', to: 'reservations#index'
end
