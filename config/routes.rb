Rails.application.routes.draw do

  devise_for :owners
  devise_for :users
  root 'landing#index'

  resources :shops do
    resources :offers, :except => [:index]
  end
end
