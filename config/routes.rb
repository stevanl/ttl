Ttlunch2012::Application.routes.draw do
  get "overview" => 'home#overview'

  root :to => "home#index"
end
