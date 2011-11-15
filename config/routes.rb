Ttlunch2012::Application.routes.draw do
  resources :nominations

  resources :rsvp

  resources :brochures

  get "overview" => 'home#overview'
  get 'about' => 'home#about'
  root :to => "home#index"
end
