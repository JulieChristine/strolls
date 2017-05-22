Rails.application.routes.draw do
  root :to => 'shops#index'

  resources :shops do
    resources :offers, :except => [:index]
  end
end
