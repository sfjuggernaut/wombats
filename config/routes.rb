Wombats::Application.routes.draw do
  resources :wombats

  root :to => 'wombats#index'
end