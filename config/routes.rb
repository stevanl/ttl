Ttlunch2012::Application.routes.draw do
  resources :rsvp

  resources :brochures

  get "overview" => 'home#overview'

  root :to => "home#index"
end
