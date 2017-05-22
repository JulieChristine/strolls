Rails.application.routes.draw do
  resources :shops do
    resources :offers
  end
end
