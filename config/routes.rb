Rails.application.routes.draw do
  resources :shops do
    resources :offers, :except => [:index]
  end
end
