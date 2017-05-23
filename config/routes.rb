Rails.application.routes.draw do

  root 'landing#index'

  resources :landing

  resources :shops do
    resources :offers, :except => [:index]
  end
end
